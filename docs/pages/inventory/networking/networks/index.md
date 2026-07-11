# Redes Docker

Redes definidas y usadas en el homelab.

## hosting-network

| Propiedad | Valor |
|-----------|-------|
| Nombre | `hosting-network` |
| Driver | bridge |
| Bridge | `br-hosting` |
| Creada por | `docker-compose.yml` (raíz) |
| Contenedores | Todos (9 activos) |

## Contenedores conectados

| Contenedor | Stack |
|------------|-------|
| nginx-proxy-manager | infra |
| cloudflared | infra |
| portainer | infra |
| duplicati | infra |
| jenkins | infra |
| backup-db | infra |
| glances | monitoring |
| filebrowser | others |
| mkdocs | docs |

## Enlaces relacionados

- [Docker en infraestructura](../../../infrastructure/docker.md)
- [Topología de red](../../../architecture/network-topology.md)
