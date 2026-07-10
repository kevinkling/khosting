# Diagramas Excalidraw

Convenciones para diagramas dibujados con Excalidraw.

## Ubicación

Guardar archivos `.excalidraw` en esta carpeta.

## Publicación en MkDocs

MkDocs no renderiza `.excalidraw` nativamente. Para incluir en la documentación:

1. Exportar el diagrama como PNG o SVG desde Excalidraw
2. Guardar la imagen en `docs/assets/images/`
3. Incrustar en el archivo `.md`:

```markdown
![Descripción del diagrama](../../assets/images/nombre-diagrama.png)
```

## Convenciones de nombres

- Archivo fuente: `nombre-descriptivo.excalidraw`
- Imagen exportada: `nombre-descriptivo.png`
