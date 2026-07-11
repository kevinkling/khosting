# KHosting

Documentación del homelab: infraestructura, servicios, inventario y operaciones.

## Stack principal

| Componente | Rol |
|------------|-----|
| **Docker Compose** | Orquestación de todos los servicios |
| **Nginx Proxy Manager** | Reverse proxy y terminación TLS |
| **Cloudflare Tunnel** | Exposición pública sin abrir puertos en el router |
| **Tailscale** | Acceso SSH entre PCs y el host |
| **Jenkins** | CI/CD (deploy de Kashflow) |

!!! tip "Empezá por el esquema"
    Para entender cómo encajan todos los componentes, visitá la sección [Esquema](architecture/index.md).

## Secciones

- [Esquema](architecture/index.md) — diagramas y flujos de acceso
- [Infraestructura](infrastructure/index.md)
- [Servicios](services/index.md)
- [Redes](networking/index.md)
- [Monitoreo](monitoring/index.md)
- [Seguridad](security/index.md)
- [Bases de datos](databases/index.md)
- [Automatización](automation/index.md)
- [IA](ai/index.md)
- [Inventario](inventory/index.md)
- [Runbooks](runbooks/index.md)
- [Troubleshooting](troubleshooting/index.md)
- [Cheatsheets](cheatsheets/index.md)
- [Referencias](references/index.md)

## Host

| Campo | Valor |
|-------|-------|
| Hostname | khosting |
| IP WiFi | 192.168.1.6 |
| IP Ethernet | 192.168.1.9 |
| Zona horaria | America/Argentina/Buenos_Aires |
