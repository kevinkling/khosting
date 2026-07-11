# Duplicati

Sistema de backups con interfaz web. Respalda volúmenes Docker críticos.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `duplicati` |
| Imagen | `lscr.io/linuxserver/duplicati:latest` |
| Compose | `infra/docker-compose.infra.yml` |
| Red | `hosting-network` |

## Puertos

| Puerto | Bind | URL |
|--------|------|-----|
| 8200 | 192.168.1.6 | `http://192.168.1.6:8200` |

## Variables de entorno

| Variable | Uso |
|----------|-----|
| `DUPLICATI_ENCRYPTION_KEY` | Cifrado de configuración |
| `DUPLICATI_PASSWORD` | Contraseña del webservice |

Ambas se definen en `.env` — no se documentan valores aquí.

## Volúmenes respaldados

| Fuente | Montaje en Duplicati |
|--------|----------------------|
| `npm-data` | `/source/nginx-proxy-manager` |
| `npm-letsencrypt` | `/source/letsencrypt` |
| `portainer-data` | `/source/portainer` |
| `jenkins-data` | `/source/jenkins` |
| `vaultwarden-data` | `/source/vaultwarden` |

## Publicación

Solo accesible en LAN.

## Enlaces relacionados

- [Runbook: backup con Duplicati](../runbooks/duplicati-backup.md)
- [Backups en inventario](../inventory/backups/index.md)
