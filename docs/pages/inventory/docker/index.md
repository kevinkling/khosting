# Docker — Inventario

Stacks Docker del homelab.

## Stacks

| Stack | Archivo | Servicios |
|-------|---------|-----------|
| Infra | `infra/docker-compose.infra.yml` | 6 contenedores |
| Monitoreo | `monitoring/docker-compose.monitoring.yml` | 1 contenedor |
| Otros | `others/docker-compose.others.yml` | 1 contenedor |
| Docs | `docs/docker-compose.docs.yml` | 1 contenedor |

## Red

Todos los stacks usan `hosting-network` (externa, creada por el compose raíz).

## Contenido

- [Contenedores](containers/index.md)
- [Imágenes](images/index.md)
- [Compose](compose/index.md)

## Enlaces relacionados

- [Docker en infraestructura](../../infrastructure/docker.md)
- [Inventario](../index.md)
