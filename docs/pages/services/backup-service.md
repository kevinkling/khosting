# Backup Service

Contenedor que respalda volúmenes Docker de forma programada.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `backup-db` |
| Imagen | `offen/docker-volume-backup:v2` |
| Compose | `infra/docker-compose.infra.yml` |
| Red | `hosting-network` |

## Configuración

| Variable | Uso |
|----------|-----|
| `BACKUP_CRON_EXPRESSION` | Programación cron |
| `BACKUP_FILENAME` | Patrón de nombre de archivo |
| `BACKUP_RETENTION_DAYS` | Días de retención (default: 7) |
| `NOTIFICATION_URLS` | URLs de notificación |
| `NOTIFICATION_LEVEL` | Nivel de notificación |

Todas las variables se definen en `.env`.

## Volúmenes respaldados

| Volumen | Montaje |
|---------|---------|
| `kashflow_kashflow-data` | `/backup/kashflow-data` (ro) |

Destino de archivos: `/home/khosting-admin/backups` en el host.

## Publicación

Servicio interno. No expone puertos.

## Enlaces relacionados

- [Duplicati](duplicati.md)
- [Backups en inventario](../inventory/backups/index.md)
