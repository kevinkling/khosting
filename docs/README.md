# Documentación KHosting

Fuente de verdad documental del homelab. Todo el contenido está en archivos Markdown (`.md`).

## Estructura

```text
docs/
├── pages/          # Contenido publicable (docs_dir de MkDocs)
│   └── private/    # Contenido sensible (excluido del build público)
├── templates/      # Plantillas reutilizables (no publicadas)
├── diagrams/       # Diagramas Mermaid y Excalidraw
└── assets/         # Imágenes y recursos estáticos
```

## Editar documentación

La documentación se puede editar desde cualquier editor de texto:

- **Cursor / VS Code** — edición directa de archivos `.md`
- **Obsidian** — editor opcional (carpeta `docs/` como vault)

El proyecto **no depende de Obsidian**.

## Crear nueva documentación

1. Copiar la plantilla adecuada desde `docs/templates/`
2. Guardar en la sección correspondiente de `docs/pages/`
3. Agregar la página al `nav` en `mkdocs.yml` (y `mkdocs.private.yml` si es privada)

## Builds MkDocs

Instalar dependencias:

```bash
pip install -r docs/requirements-mkdocs.txt
```

### Build público (sin credenciales)

```bash
mkdocs serve
mkdocs build
```

Salida: `docs/.site/`

### Build privado (documentación completa)

```bash
mkdocs serve -f mkdocs.private.yml
mkdocs build -f mkdocs.private.yml
```

Salida: `docs/.site-private/`

## Contenido sensible

- Credenciales e inventario operativo: `docs/pages/private/`
- Marcador: front matter `visibility: private`
- El build público excluye `private/` vía `exclude_docs` en `mkdocs.yml`

## Diagramas

- **Mermaid**: inline en archivos `.md` o en `diagrams/mermaid/`
- **Excalidraw**: archivos `.excalidraw` en `diagrams/excalidraw/`, exportar PNG/SVG a `assets/images/`
