# Documentación KHosting

Fuente de verdad documental del homelab. Todo el contenido publicable está en archivos Markdown (`.md`).

## Estructura

```text
docs/
├── pages/          # Contenido publicable (docs_dir de MkDocs)
│   ├── architecture/   # Esquema y diagramas
│   ├── infrastructure/
│   ├── services/
│   ├── networking/
│   ├── inventory/
│   ├── runbooks/
│   ├── troubleshooting/
│   └── private/        # EXCLUIDO del sitio público (credenciales)
├── templates/      # Plantillas reutilizables (no publicadas)
├── diagrams/       # Diagramas Mermaid y Excalidraw
└── assets/         # Imágenes y recursos estáticos
```

## Navegación del sitio

El sitio usa pestañas top-level en MkDocs Material:

| Pestaña | Contenido |
|---------|-----------|
| Inicio | Resumen del homelab |
| Esquema | Diagramas y flujos (Tailscale, Cloudflare, NPM) |
| Infraestructura | Host, Docker, server setup |
| Servicios | Un documento por contenedor |
| Redes | Tailscale, túnel, NPM, DNS |
| ... | Inventario, runbooks, troubleshooting, etc. |

## Editar documentación

La documentación se puede editar desde cualquier editor de texto:

- **Cursor / VS Code** — edición directa de archivos `.md`
- **Obsidian** — editor opcional (carpeta `docs/` como vault)

El proyecto **no depende de Obsidian**.

## Crear nueva documentación

1. Copiar la plantilla adecuada desde `docs/templates/`
2. Guardar en la sección correspondiente de `docs/pages/`
3. Agregar la página al `nav` en `mkdocs.yml`

## MkDocs

Instalar dependencias:

```bash
pip install -r docs/requirements-mkdocs.txt
```

Previsualizar localmente:

```bash
mkdocs serve
```

Build estático:

```bash
mkdocs build
```

Salida: `docs/.site/`

Con Docker (desarrollo):

```bash
docker compose --profile dev up mkdocs-dev
```

## Secretos y credenciales

- Contraseñas, tokens y claves **no** se documentan en Markdown público.
- Usar `.env` en la raíz del proyecto o la UI de cada servicio.
- La carpeta `docs/pages/private/` contiene credenciales y está **excluida** del build (`exclude_docs` en `mkdocs.yml`).

## Diagramas

- **Mermaid**: inline en archivos `.md` o en `diagrams/mermaid/`
- **Excalidraw**: archivos `.excalidraw` en `diagrams/excalidraw/`, exportar PNG/SVG a `assets/images/`
