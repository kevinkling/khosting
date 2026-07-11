# Puertos

Mapa de puertos publicados en el host `khosting`.

## Públicos (0.0.0.0)

| Puerto | Protocolo | Servicio | Contenedor |
|--------|-----------|----------|------------|
| 80 | TCP | HTTP | nginx-proxy-manager |
| 443 | TCP | HTTPS | nginx-proxy-manager |

## LAN only (192.168.1.6)

| Puerto | Protocolo | Servicio | Contenedor |
|--------|-----------|----------|------------|
| 81 | TCP | NPM admin | nginx-proxy-manager |
| 90 | TCP | FileBrowser | filebrowser |
| 8000 | TCP | MkDocs | mkdocs |
| 8200 | TCP | Duplicati | duplicati |
| 9000 | TCP | Portainer | portainer |
| 61208 | TCP | Glances | glances |

## Solo red Docker (expose)

| Puerto | Servicio | Contenedor |
|--------|----------|------------|
| 8080 | Jenkins UI | jenkins |
| 50000 | Jenkins agents | jenkins |

## Host

| Puerto | Servicio |
|--------|----------|
| 22 | SSH (acceso vía Tailscale) |

## Enlaces relacionados

- [Topología de red](../../../architecture/network-topology.md)
- [Contenedores](../../docker/containers/index.md)
