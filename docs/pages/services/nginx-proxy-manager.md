# Nginx Proxy Manager

Reverse proxy con interfaz web para gestionar hosts, certificados SSL y reglas de enrutamiento.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `nginx-proxy-manager` |
| Imagen | `jc21/nginx-proxy-manager:latest` |
| Compose | `infra/docker-compose.infra.yml` |
| Red | `hosting-network` |

## Puertos

| Puerto | Bind | Uso |
|--------|------|-----|
| 80 | 0.0.0.0 | HTTP |
| 443 | 0.0.0.0 | HTTPS |
| 81 | 192.168.1.6 | Panel admin |

## Volúmenes

| Volumen | Montaje |
|---------|---------|
| `npm-data` | `/data` |
| `npm-letsencrypt` | `/etc/letsencrypt` |

## Publicación

- **Público:** Cloudflare Tunnel enruta tráfico a NPM en 80/443.
- **LAN:** Panel admin en `http://192.168.1.6:81`.

Las credenciales del panel se gestionan en la UI o en `.env` — no se documentan aquí.

## Enlaces relacionados

- [Redes — NPM](../networking/nginx-proxy-manager.md)
- [Reverse proxy en inventario](../inventory/reverse-proxy/index.md)
- [Troubleshooting](../troubleshooting/npm-routing.md)
