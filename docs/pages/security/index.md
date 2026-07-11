# Seguridad

Políticas, hardening y buenas prácticas de seguridad del homelab.

## Capas de protección

| Capa | Medida |
|------|--------|
| Host | UFW (solo SSH), fail2ban |
| SSH | Sin root login, solo claves, acceso vía Tailscale |
| Contenedores | `no-new-privileges:true` |
| Red | Binds a `192.168.1.6` para servicios de gestión |
| Secretos | Variables en `.env` (no en Markdown) |
| Público | Cloudflare Tunnel (sin port-forwarding) |

## SSH

- `PermitRootLogin no` en `sshd_config`
- Autenticación por clave pública
- Acceso remoto solo vía Tailscale (no expuesto a Internet)

## Firewall (UFW)

```bash
sudo ufw allow ssh
sudo ufw enable
```

Solo SSH está permitido desde la red. Los servicios web no necesitan puertos abiertos gracias al túnel.

## Contenedores

- `security_opt: no-new-privileges:true` en la mayoría de servicios
- Servicios de gestión (Portainer, Duplicati) solo en LAN
- Docker socket montado solo donde es necesario (Jenkins, Portainer, Glances)

## Secretos

| Recurso | Ubicación |
|---------|-----------|
| Tokens Cloudflare | `.env` → `CLOUDFLARE_TOKEN` |
| Duplicati | `.env` → `DUPLICATI_*` |
| Credenciales Jenkins | UI de Jenkins |
| Credenciales NPM | UI de NPM |

!!! danger "Nunca en Markdown"
    Contraseñas, tokens y claves no se documentan en archivos `.md` del repositorio.

## Enlaces relacionados

- [Configuración del servidor](../infrastructure/server-setup.md)
- [Tailscale](../networking/tailscale.md)
- [Certificados](../inventory/certificates/index.md)
