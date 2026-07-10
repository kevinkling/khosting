# Docker — Cheatsheet

Referencia rápida de comandos Docker y Compose.

## Procesos en terminal

| Comando | Descripción |
|---------|-------------|
| `Ctrl+Z` | Pausar un proceso |
| `bg` | Enviar proceso pausado al fondo |
| `jobs` | Ver procesos en segundo plano |
| `fg` | Traer proceso al frente |

## Docker Compose

Aplicar cambios en contenedores:

```bash
docker compose up -d
```

Reiniciar un contenedor específico:

```bash
docker compose restart <contenedor>
```

## Red

Velocidad de internet:

```bash
speedtest-cli --simple
```

## Deploy Kashflow

En el servidor:

```bash
docker compose pull
docker compose up -d
```

Build y push de imagen (desde máquina de desarrollo):

```bash
docker build -t ghcr.io/kevinkling/kashflow:latest .
docker push ghcr.io/kevinkling/kashflow:latest
```

> Las credenciales de GitHub Packages se gestionan en Jenkins (`credentialsId: github-packages`), no en este documento.

## Enlaces relacionados

- [Cheatsheets](index.md)
- [Volver al inicio](../index.md)
