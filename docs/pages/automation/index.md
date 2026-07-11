# Automatización

CI/CD, pipelines, scripts y tareas programadas.

## Pipelines activos

| Pipeline | Herramienta | Trigger | Destino |
|----------|-------------|---------|---------|
| [Jenkins — Kashflow](jenkins-kashflow.md) | Jenkins | Webhook PR merge | `/workspace/kashflow` |

## Backups programados

| Tarea | Herramienta | Programación |
|-------|-------------|--------------|
| Volúmenes Docker | backup-service | `BACKUP_CRON_EXPRESSION` en `.env` |
| Volúmenes críticos | Duplicati | Configurado en UI |

## Enlaces relacionados

- [Servicio Jenkins](../services/jenkins.md)
- [Runbooks](../runbooks/index.md)
- [Volver al inicio](../index.md)
