# Reiniciar NPM y túnel

Recuperar el acceso público cuando NPM o Cloudflare Tunnel fallan.

## Síntomas

- Servicios públicos inaccesibles desde Internet
- `cloudflared` en estado `restarting` o `exited`
- NPM no responde en puertos 80/443

## Pasos

### 1. Verificar estado

```bash
docker compose ps nginx-proxy-manager cloudflared
```

### 2. Ver logs

```bash
docker compose logs --tail 50 nginx-proxy-manager
docker compose logs --tail 50 cloudflared
```

### 3. Reiniciar NPM

```bash
docker compose restart nginx-proxy-manager
```

Esperar 10 segundos y verificar:

```bash
curl -I http://localhost:80
```

### 4. Reiniciar túnel

```bash
docker compose restart cloudflared
```

Verificar conexión:

```bash
docker compose logs cloudflared --tail 20
```

Debe mostrar conexión exitosa al túnel.

### 5. Verificar servicio público

Probar un dominio público configurado en NPM desde un dispositivo externo a la LAN.

## Si persiste el problema

- Verificar que `CLOUDFLARE_TOKEN` en `.env` sea válido
- Revisar configuración del túnel en Cloudflare Zero Trust
- Ver [Troubleshooting: túnel](../troubleshooting/cloudflare-tunnel.md)

## Enlaces relacionados

- [Cloudflare Tunnel](../networking/cloudflare-tunnel.md)
- [NPM](../networking/nginx-proxy-manager.md)
