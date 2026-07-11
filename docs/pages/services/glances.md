# Glances

Monitor de sistema en tiempo real (CPU, memoria, disco, red, contenedores).

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `glances` |
| Imagen | `nicolargo/glances:latest` |
| Compose | `monitoring/docker-compose.monitoring.yml` |
| Red | `hosting-network` |

## Puertos

| Puerto | Bind | URL |
|--------|------|-----|
| 61208 | 192.168.1.6 | `http://192.168.1.6:61208` |

## Acceso al host

Monta `/var/run/docker.sock`, `/sys`, `/proc` y `/etc/os-release` en modo lectura para métricas del sistema y contenedores.

## Publicación

Solo accesible en LAN.

## Enlaces relacionados

- [Monitoreo](../monitoring/index.md)
