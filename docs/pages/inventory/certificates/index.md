# Certificados

Certificados SSL/TLS del homelab.

## Origen

| Fuente | Uso |
|--------|-----|
| Let's Encrypt (vía NPM) | Certificados para proxy hosts |
| Cloudflare | Certificado edge en el túnel |

## Almacenamiento

| Volumen | Contenido |
|---------|-----------|
| `npm-letsencrypt` | Certificados generados por NPM |

Montaje en contenedor: `/etc/letsencrypt`

## Renovación

NPM renueva automáticamente certificados Let's Encrypt. Verificar en el panel admin que no haya certificados expirados.

## Backup

El volumen `npm-letsencrypt` se respalda vía Duplicati (`/source/letsencrypt`).

## Enlaces relacionados

- [Nginx Proxy Manager](../../services/nginx-proxy-manager.md)
- [Reverse proxy](../reverse-proxy/index.md)
