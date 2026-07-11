# Contenedores

Registro de contenedores Docker desplegados.

## Resumen

| Campo | Valor |
|-------|-------|
| Total contenedores | 9 |
| Red compartida | hosting-network |
| Host (bind) | 192.168.1.6 |

## Contenedores

| Contenedor | Compose | Imagen | URL / Puerto |
|------------|---------|--------|--------------|
| nginx-proxy-manager | infra | jc21/nginx-proxy-manager:latest | http://192.168.1.6:81 |
| cloudflared | infra | cloudflare/cloudflared:latest | — (túnel) |
| portainer | infra | portainer/portainer-ce:alpine | http://192.168.1.6:9000 |
| duplicati | infra | lscr.io/linuxserver/duplicati:latest | http://192.168.1.6:8200 |
| jenkins | infra | build local (Dockerfile.jenkins) | vía NPM / túnel |
| backup-service | infra | offen/docker-volume-backup:v2 | — |
| glances | monitoring | nicolargo/glances:latest | http://192.168.1.6:61208 |
| filebrowser | others | filebrowser/filebrowser:latest | http://192.168.1.6:90 |
| mkdocs | docs | build local (docs/Dockerfile) | http://192.168.1.6:8000 |

## Puertos públicos (host)

| Puerto | Servicio |
|--------|----------|
| 80, 443 | Nginx Proxy Manager |
| 81 | NPM (admin) |
| 90 | FileBrowser |
| 8000 | MkDocs |
| 9000 | Portainer |
| 8200 | Duplicati |
| 61208 | Glances |

## Futuros

<!-- Agregar filas cuando se desplieguen: Grafana, Prometheus, PostgreSQL, etc. -->

## Enlaces relacionados

- [Servidor](../../servers/index.md)
- [Docker](../index.md)
- [Inventario](../../index.md)
- [Volver al inicio](../../../index.md)
