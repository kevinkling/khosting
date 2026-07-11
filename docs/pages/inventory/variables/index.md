# Variables de entorno

Variables definidas en `.env` del proyecto.

## Archivo

`.env` en la raíz del repositorio (no versionado). Plantilla en `.env.example`.

Para sincronizar claves faltantes sin sobrescribir valores:

```bash
./scripts/sync-env.sh
```

## Variables activas

| Variable | Servicio | Uso |
|----------|----------|-----|
| `CLOUDFLARE_TOKEN` | cloudflared | Token del túnel |
| `DUPLICATI_ENCRYPTION_KEY` | Duplicati | Cifrado de config |
| `DUPLICATI_PASSWORD` | Duplicati | Contraseña webservice |
| `BACKUP_CRON_EXPRESSION` | backup-service | Programación cron |
| `BACKUP_FILENAME` | backup-service | Patrón de nombre |
| `NOTIFICATION_URLS` | backup-service | URLs de notificación |
| `MKDOCS_PUBLISH` | mkdocs | Puerto de publicación |
| `MKDOCS_DEV_PUBLISH` | mkdocs-dev | Puerto de desarrollo |
| `VAULTWARDEN_ADMIN_TOKEN` | vaultwarden | Token panel `/admin` |
| `VAULTWARDEN_SIGNUPS_ALLOWED` | vaultwarden | Permitir registros (`true`/`false`) |

## Variables preparadas (futuro)

| Variable | Servicio futuro |
|----------|-----------------|
| `GRAFANA_USER`, `GRAFANA_PASSWORD` | Grafana |
| `MYSQL_*` | MySQL |
| `POSTGRES_*` | PostgreSQL |

## Enlaces relacionados

- [Seguridad](../../security/index.md)
- `.env.example` en la raíz del repositorio
