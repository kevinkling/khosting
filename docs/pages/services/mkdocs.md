# MkDocs

Esta documentación, servida como sitio estático vía Nginx.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `mkdocs` |
| Imagen | Build local (`docs/Dockerfile`) |
| Compose | `docs/docker-compose.docs.yml` |
| Red | `hosting-network` |

## Puertos

| Puerto | Variable | Default |
|--------|----------|---------|
| Host → 80 | `MKDOCS_PUBLISH` | `8000` |

## Publicación

### LAN

`http://192.168.1.6:8000` (variable `MKDOCS_PUBLISH`, default `8000`).

### Público (opcional)

Vía NPM + Cloudflare Tunnel (ej. `docs.kashflow.site`).

## Build

El Dockerfile hace un build multi-stage:

1. **Builder:** Python 3.12 + `mkdocs build`
2. **Runtime:** Nginx Alpine sirve `docs/.site/`

## Desarrollo local

```bash
pip install -r docs/requirements-mkdocs.txt
mkdocs serve
```

O con Docker (perfil dev):

```bash
docker compose --profile dev up mkdocs-dev
```

Puerto dev: `MKDOCS_DEV_PUBLISH` (default `8001`).

## Enlaces relacionados

- [Cheatsheet Docker](../cheatsheets/docker.md)
- [Referencias](../references/index.md)
