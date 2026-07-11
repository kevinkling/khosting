# Documentación KHosting

Fuente de verdad documental del homelab. Todo el contenido está en archivos Markdown (`.md`).

## Estructura

```text
docs/
├── pages/          # Contenido publicable (docs_dir de MkDocs)
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

## Secretos y credenciales

- Contraseñas, tokens y claves **no** se documentan en Markdown.
- Usar `.env` en la raíz del proyecto o la UI de cada servicio.
- Las plantillas de acceso están en `docs/templates/credential.md`.

## Diagramas

- **Mermaid**: inline en archivos `.md` o en `diagrams/mermaid/`
- **Excalidraw**: archivos `.excalidraw` en `diagrams/excalidraw/`, exportar PNG/SVG a `assets/images/`
