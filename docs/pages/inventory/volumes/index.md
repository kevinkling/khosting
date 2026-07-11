# Volúmenes

Volúmenes Docker persistentes del homelab.

## Volúmenes activos

| Volumen | Servicio | Contenido |
|---------|----------|-----------|
| `npm-data` | NPM | Configuración y DB SQLite |
| `npm-letsencrypt` | NPM | Certificados SSL |
| `portainer-data` | Portainer | Configuración |
| `duplicati-config` | Duplicati | Configuración de backups |
| `duplicati-backups` | Duplicati | Archivos de backup |
| `jenkins-data` | Jenkins | Home de Jenkins |
| `vaultwarden-data` | Vaultwarden | SQLite, adjuntos y configuración |
| `filebrowser-db` | FileBrowser | Base de usuarios |
| `kashflow_kashflow-data` | Kashflow (externo) | Datos de la app |

## Backups

| Volumen | Respaldado por |
|---------|----------------|
| npm-data, npm-letsencrypt, portainer-data, jenkins-data, vaultwarden-data | Duplicati |
| kashflow_kashflow-data | backup-service |

## Enlaces relacionados

- [Backups](../backups/index.md)
- [Contenedores](../docker/containers/index.md)
