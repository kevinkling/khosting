# FileBrowser

Explorador web de archivos del host.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `filebrowser` |
| Imagen | `filebrowser/filebrowser:latest` |
| Compose | `others/docker-compose.others.yml` |
| Red | `hosting-network` |

## Puertos

| Puerto | Bind | URL |
|--------|------|-----|
| 90 | 192.168.1.6 | `http://192.168.1.6:90` |

## Volúmenes

| Montaje | Uso |
|---------|-----|
| `/home:/srv` | Directorio raíz navegable |
| `filebrowser-db:/database` | Base de datos de usuarios |

## Recursos

Límite de memoria: 128 MB.

## Publicación

Solo accesible en LAN.

## Enlaces relacionados

- [Inventario de contenedores](../inventory/docker/containers/index.md)
