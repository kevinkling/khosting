---
visibility: private
---

# Servidor — khosting

Host físico principal del homelab.

## Información general

| Campo | Valor |
|-------|-------|
| Hostname | khosting |
| Zona horaria | America/Argentina/Buenos_Aires |
| Usuario admin | khosting-admin |

## Red

| Interfaz | IP | Uso |
|----------|-----|-----|
| Ethernet | 192.168.1.9/24 | Red cableada |
| WiFi | 192.168.1.6/24 | Red inalámbrica (bind addresses Docker) |

## Software instalado

- Docker y Docker Compose
- Tailscale
- Node.js LTS
- fail2ban, UFW
- Utilidades: lm-sensors, neovim, btop, zsh

## Acceso

Ver [credenciales SSH](../credentials/server-ssh.md).

## Enlaces relacionados

- [Configuración inicial del servidor](../../infrastructure/server-setup.md)
- [Contenedores](containers.md)
