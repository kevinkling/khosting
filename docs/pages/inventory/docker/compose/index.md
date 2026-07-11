# Compose — Inventario

Archivos Docker Compose del monorepo.

## Estructura

```text
khosting/
├── docker-compose.yml                    # Orquestador raíz
├── infra/docker-compose.infra.yml        # NPM, túnel, Portainer, Duplicati, Jenkins, Vaultwarden, backups
├── monitoring/docker-compose.monitoring.yml  # Glances
├── others/docker-compose.others.yml      # FileBrowser
└── docs/docker-compose.docs.yml          # MkDocs
```

## Orquestador raíz

```yaml
include:
  - path: ./infra/docker-compose.infra.yml
  - path: ./monitoring/docker-compose.monitoring.yml
  - path: ./others/docker-compose.others.yml
  - path: ./docs/docker-compose.docs.yml

networks:
  hosting-network:
    driver: bridge
```

## Compose externo

| Proyecto | Ubicación en host |
|----------|-------------------|
| Kashflow | `/workspace/kashflow/docker-compose.yml` |

## Enlaces relacionados

- [Docker en infraestructura](../../../infrastructure/docker.md)
- [Contenedores](../containers/index.md)
