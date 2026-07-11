# Infraestructura

Arquitectura base del homelab: servidor host, Docker, redes y componentes core.

## Host principal

El servidor `khosting` es un notebook que actúa como host físico del homelab. Corre Docker y todos los servicios containerizados.

| Aspecto | Detalle |
|---------|---------|
| Hostname | khosting |
| Usuario admin | khosting-admin |
| Red WiFi | 192.168.1.6/24 (bind addresses Docker) |
| Red Ethernet | 192.168.1.9/24 |

## Orquestación Docker

El archivo raíz `docker-compose.yml` incluye todos los stacks:

```text
docker-compose.yml
├── infra/docker-compose.infra.yml      # NPM, túnel, Portainer, Duplicati, Jenkins, backups
├── monitoring/docker-compose.monitoring.yml  # Glances
├── others/docker-compose.others.yml    # FileBrowser
└── docs/docker-compose.docs.yml        # MkDocs
```

Todos los servicios comparten la red `hosting-network`.

## Contenido

- [Configuración inicial del servidor](server-setup.md) — hardening, SSH, firewall
- [Docker](docker.md) — red compartida, composes y convenciones

## Enlaces relacionados

- [Esquema](../architecture/index.md)
- [Servidor en inventario](../inventory/servers/index.md)
- [Volver al inicio](../index.md)
