# Backups

Estrategia de respaldo del homelab.

## Herramientas

| Herramienta | Tipo | Alcance |
|-------------|------|---------|
| [Duplicati](../../services/duplicati.md) | Backup de volúmenes Docker | npm-data, npm-letsencrypt, portainer-data, jenkins-data |
| [backup-service](../../services/backup-service.md) | Backup programado (cron) | kashflow_kashflow-data |

## Duplicati

- Interfaz: `http://192.168.1.6:8200`
- Variables: `DUPLICATI_ENCRYPTION_KEY`, `DUPLICATI_PASSWORD` en `.env`
- Volúmenes montados como `/source/*` en modo lectura

## backup-service

- Imagen: `offen/docker-volume-backup:v2`
- Programación: `BACKUP_CRON_EXPRESSION` en `.env`
- Retención: 7 días
- Destino: `/home/khosting-admin/backups` en el host
- Notificaciones: `NOTIFICATION_URLS` en `.env`

## Runbooks

- [Backup con Duplicati](../../runbooks/duplicati-backup.md)

## Enlaces relacionados

- [Volúmenes](../volumes/index.md)
- [Seguridad](../../security/index.md)
