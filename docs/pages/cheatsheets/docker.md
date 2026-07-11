# Docker — Cheatsheet

Referencia rápida de comandos Docker y Compose.

## Docker Compose — Stack completo

```bash
# Levantar todo
docker compose up -d

# Ver estado
docker compose ps

# Logs de un servicio
docker compose logs -f <servicio>

# Reiniciar un servicio
docker compose restart <servicio>

# Detener todo
docker compose down

# Rebuild de imagen local
docker compose build <servicio>
docker compose up -d <servicio>
```

## Servicios individuales

```bash
docker compose restart nginx-proxy-manager cloudflared
docker compose restart jenkins
docker compose logs -f cloudflared --tail 50
```

## Red

```bash
# Inspeccionar red compartida
docker network inspect hosting-network

# Listar contenedores en la red
docker network inspect hosting-network --format '{{range .Containers}}{{.Name}} {{end}}'
```

## Imágenes

```bash
# Actualizar imágenes
docker compose pull

# Limpiar imágenes sin usar
docker image prune -f
```

## Procesos en terminal

| Comando | Descripción |
|---------|-------------|
| `Ctrl+Z` | Pausar un proceso |
| `bg` | Enviar proceso pausado al fondo |
| `jobs` | Ver procesos en segundo plano |
| `fg` | Traer proceso al frente |

## Red — velocidad

```bash
speedtest-cli --simple
```

## Deploy Kashflow

En el servidor:

```bash
cd /workspace/kashflow
docker compose pull
docker compose up -d
```

Build y push de imagen (desde máquina de desarrollo):

```bash
docker build -t ghcr.io/kevinkling/kashflow:latest .
docker push ghcr.io/kevinkling/kashflow:latest
```

> Las credenciales de GitHub Packages se gestionan en Jenkins (`credentialsId: github-packages`), no en este documento.

## MkDocs local

```bash
pip install -r docs/requirements-mkdocs.txt
mkdocs serve
mkdocs build
```

## Enlaces relacionados

- [Docker en infraestructura](../infrastructure/docker.md)
- [Runbook: levantar el stack](../runbooks/start-stack.md)
- [Cheatsheets](index.md)
