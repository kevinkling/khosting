# KHosting

Infraestructura modular Docker para homelab: servicios de infraestructura, monitoreo y aplicaciones.

## Objetivo

Orquestar y documentar la infraestructura del homelab mediante Docker Compose modular.

## Requisitos

- Docker y Docker Compose
- Archivo `.env` configurado en la raíz (ver `.env.example`)

## Levantar el proyecto

```bash
docker-compose up -d
```

## Documentación

Toda la documentación técnica vive en [`docs/`](docs/).

- Índice: [`docs/pages/index.md`](docs/pages/index.md)
- Guía de edición: [`docs/README.md`](docs/README.md)

Para previsualizar con Material for MkDocs:

```bash
pip install -r docs/requirements-mkdocs.txt
mkdocs serve                  # versión pública
mkdocs serve -f mkdocs.private.yml   # versión completa (homelab)
```
