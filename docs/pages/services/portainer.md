# Portainer

Interfaz web para gestionar contenedores, imágenes, volúmenes y redes Docker.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `portainer` |
| Imagen | `portainer/portainer-ce:alpine` |
| Compose | `infra/docker-compose.infra.yml` |
| Red | `hosting-network` |

## Puertos

| Puerto | Bind | URL |
|--------|------|-----|
| 9000 | 192.168.1.6 | `http://192.168.1.6:9000` |

## Volúmenes

| Montaje | Uso |
|---------|-----|
| `/var/run/docker.sock` | Acceso al daemon Docker |
| `portainer-data:/data` | Configuración persistente |

## Publicación

Solo accesible en LAN. No se expone vía túnel.

## Enlaces relacionados

- [Inventario de contenedores](../inventory/docker/containers/index.md)
