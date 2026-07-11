# Imágenes Docker

Imágenes usadas por los contenedores del homelab.

## Imágenes activas

| Imagen | Contenedor | Origen |
|--------|------------|--------|
| `jc21/nginx-proxy-manager:latest` | nginx-proxy-manager | Docker Hub |
| `cloudflare/cloudflared:latest` | cloudflared | Docker Hub |
| `portainer/portainer-ce:alpine` | portainer | Docker Hub |
| `lscr.io/linuxserver/duplicati:latest` | duplicati | LinuxServer.io |
| Build local (`Dockerfile.jenkins`) | jenkins | Repositorio |
| `vaultwarden/server:latest` | vaultwarden | Docker Hub |
| `offen/docker-volume-backup:v2` | backup-db | Docker Hub |
| `nicolargo/glances:latest` | glances | Docker Hub |
| `filebrowser/filebrowser:latest` | filebrowser | Docker Hub |
| Build local (`docs/Dockerfile`) | mkdocs | Repositorio |

## Imágenes externas

| Imagen | Uso |
|--------|-----|
| `ghcr.io/kevinkling/kashflow:latest` | App Kashflow (compose separado) |

## Actualización

```bash
docker compose pull
docker compose up -d
```

## Enlaces relacionados

- [Contenedores](../containers/index.md)
- [Cheatsheet Docker](../../../cheatsheets/docker.md)
