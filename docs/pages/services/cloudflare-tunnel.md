# Cloudflare Tunnel

Contenedor `cloudflared` que mantiene el túnel saliente hacia Cloudflare.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `cloudflared` |
| Imagen | `cloudflare/cloudflared:latest` |
| Compose | `infra/docker-compose.infra.yml` |
| Red | `hosting-network` |
| Dependencia | `nginx-proxy-manager` |

## Configuración

| Variable | Ubicación |
|----------|-----------|
| `CLOUDFLARE_TOKEN` | `.env` en la raíz del proyecto |

```bash
command: tunnel --no-autoupdate run --token ${CLOUDFLARE_TOKEN}
```

## Publicación

No expone puertos al host. El túnel es una conexión saliente hacia Cloudflare Edge.

## Operaciones

```bash
docker compose logs -f cloudflared
docker compose restart cloudflared
```

## Enlaces relacionados

- [Redes — Cloudflare Tunnel](../networking/cloudflare-tunnel.md)
- [Runbook: reiniciar NPM y túnel](../runbooks/restart-proxy-tunnel.md)
- [Troubleshooting](../troubleshooting/cloudflare-tunnel.md)
