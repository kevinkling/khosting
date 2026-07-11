# Túnel Cloudflare caído

Servicios públicos inaccesibles desde Internet.

## Síntomas

- Dominios públicos no responden
- `cloudflared` en estado `exited` o `restarting`
- Logs con errores de autenticación o conexión

## Diagnóstico

```bash
docker compose ps cloudflared
docker compose logs cloudflared --tail 50
```

## Causas comunes

### Token inválido o expirado

```bash
grep CLOUDFLARE_TOKEN .env
```

Verificar en Cloudflare Zero Trust que el túnel esté activo y el token sea válido.

### NPM no está corriendo

El túnel depende de NPM:

```bash
docker compose ps nginx-proxy-manager
```

Si está caído, reiniciar primero NPM y luego el túnel.

### Error de red

```bash
docker network inspect hosting-network | grep cloudflared
```

## Solución

```bash
docker compose restart nginx-proxy-manager
sleep 10
docker compose restart cloudflared
docker compose logs cloudflared --tail 20
```

## Si persiste

1. Regenerar token en Cloudflare Zero Trust
2. Actualizar `CLOUDFLARE_TOKEN` en `.env`
3. `docker compose up -d cloudflared`

## Enlaces relacionados

- [Runbook: reiniciar NPM y túnel](../runbooks/restart-proxy-tunnel.md)
- [Cloudflare Tunnel](../networking/cloudflare-tunnel.md)
