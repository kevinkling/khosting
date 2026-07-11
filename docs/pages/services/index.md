# Servicios

Documentación de los servicios desplegados en el homelab.

## Resumen

| Servicio | Compose | Modo LAN | Publicación | Rol |
|----------|---------|----------|-------------|-----|
| [Nginx Proxy Manager](nginx-proxy-manager.md) | infra | `http://192.168.1.6:81` (admin) | Público (80/443) + túnel | Reverse proxy |
| [Cloudflare Tunnel](cloudflare-tunnel.md) | infra | — | Túnel saliente | Acceso público |
| [Portainer](portainer.md) | infra | `http://192.168.1.6:9000` | — | Gestión Docker |
| [Duplicati](duplicati.md) | infra | `http://192.168.1.6:8200` | — | Backups |
| [Jenkins](jenkins.md) | infra | — | NPM + túnel | CI/CD |
| [Vaultwarden](vaultwarden.md) | infra | — | NPM + túnel (`vault.kashflow.site`) | Gestor de contraseñas |
| [Backup Service](backup-service.md) | infra | — | Interno | Backups de volúmenes |
| [Glances](glances.md) | monitoring | `http://192.168.1.6:61208` | — | Monitoreo |
| [FileBrowser](filebrowser.md) | others | `http://192.168.1.6:90` | — | Explorador de archivos |
| [MkDocs](mkdocs.md) | docs | `http://192.168.1.6:8000` | NPM + túnel (opcional) | Esta documentación |

## Modos de acceso

| Modo | Descripción |
|------|-------------|
| **Solo LAN** | Bind `192.168.1.6:PUERTO`, sin dominio público |
| **Solo público** | `expose` en Docker + NPM + túnel, sin puerto en LAN |
| **Dual** | LAN directa y opcionalmente dominio vía NPM + túnel |

Ver detalle en [Flujos de acceso](../architecture/access-flows.md).

## Red compartida

Todos los servicios están en `hosting-network`. Ver [topología de red](../architecture/network-topology.md).

## Enlaces relacionados

- [Inventario de contenedores](../inventory/docker/containers/index.md)
- [Esquema](../architecture/index.md)
- [Volver al inicio](../index.md)
