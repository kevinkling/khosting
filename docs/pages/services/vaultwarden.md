# Vaultwarden

Gestor de contraseñas compatible con Bitwarden, autoalojado en el homelab.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `vaultwarden` |
| Imagen | `vaultwarden/server:latest` |
| Compose | `infra/docker-compose.infra.yml` |
| Red | `hosting-network` |
| Dominio | `https://vault.kashflow.site` |

## Puertos

| Puerto | Exposición | Uso |
|--------|------------|-----|
| 80 | Solo Docker (`expose`) | API y web vault |

Vaultwarden se publica vía NPM + Cloudflare Tunnel. No tiene bind en LAN.

## Variables de entorno

| Variable | Uso |
|----------|-----|
| `DOMAIN` | URL pública (`https://vault.kashflow.site`) |
| `VAULTWARDEN_ADMIN_TOKEN` | Token para el panel `/admin` |
| `VAULTWARDEN_SIGNUPS_ALLOWED` | Permitir nuevos registros (`true`/`false`) |
| `WEBSOCKET_ENABLED` | Sync en vivo y notificaciones |

Todas las sensibles se definen en `.env` — no se documentan valores aquí.

## Volúmenes

| Montaje | Uso |
|---------|-----|
| `vaultwarden-data:/data` | SQLite, adjuntos y configuración |

## Publicación

### Público (NPM + túnel)

1. **Cloudflare DNS:** CNAME `vault` → hostname del túnel (proxied).
2. **Cloudflare Tunnel:** ruta `vault.kashflow.site` → `http://nginx-proxy-manager:80`.
3. **NPM Proxy Host:**
   - Domain: `vault.kashflow.site`
   - Forward: `http://vaultwarden:80`
   - SSL: Full (o el esquema usado con el túnel)
   - Websockets Support: ON
   - Block Common Exploits: ON

### LAN

No expuesto en `192.168.1.6`. Acceso solo vía dominio público.

## Post-deploy

1. Generar token admin: `openssl rand -base64 48` → `VAULTWARDEN_ADMIN_TOKEN` en `.env`.
2. `docker compose up -d vaultwarden`
3. Crear cuenta en `https://vault.kashflow.site`.
4. Panel admin: `https://vault.kashflow.site/admin` (usar `ADMIN_TOKEN`).
5. Desactivar registros: `VAULTWARDEN_SIGNUPS_ALLOWED=false` en `.env` y recrear el contenedor.
6. App Bitwarden (celular): servidor self-hosted `https://vault.kashflow.site`.

## Enlaces relacionados

- [Flujos de acceso](../architecture/access-flows.md)
- [DNS](../networking/dns.md)
- [Duplicati](duplicati.md)
- [Seguridad](../security/index.md)
