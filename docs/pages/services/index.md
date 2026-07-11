# Servicios

Documentación de los servicios desplegados en el homelab.

## Resumen

| Servicio | Compose | Publicación | Rol |
|----------|---------|-------------|-----|
| [Nginx Proxy Manager](nginx-proxy-manager.md) | infra | Público (80/443) + LAN (81) | Reverse proxy |
| [Cloudflare Tunnel](cloudflare-tunnel.md) | infra | Túnel saliente | Acceso público |
| [Portainer](portainer.md) | infra | LAN (9000) | Gestión Docker |
| [Duplicati](duplicati.md) | infra | LAN (8200) | Backups |
| [Jenkins](jenkins.md) | infra | NPM + túnel | CI/CD |
| [Backup Service](backup-service.md) | infra | Interno | Backups de volúmenes |
| [Glances](glances.md) | monitoring | LAN (61208) | Monitoreo |
| [FileBrowser](filebrowser.md) | others | LAN (90) | Explorador de archivos |
| [MkDocs](mkdocs.md) | docs | LAN (8000) | Esta documentación |

## Red compartida

Todos los servicios están en `hosting-network`. Ver [topología de red](../architecture/network-topology.md).

## Enlaces relacionados

- [Inventario de contenedores](../inventory/docker/containers/index.md)
- [Esquema](../architecture/index.md)
- [Volver al inicio](../index.md)
