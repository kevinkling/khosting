# Tailscale

VPN mesh peer-to-peer para acceso SSH al host `khosting`.

## Propósito

Tailscale conecta los PCs de administración con el servidor sin exponer SSH a Internet. No enruta tráfico de servicios web.

## Uso

| Acción | Cómo |
|--------|------|
| Instalar en host | `curl -fsSL https://tailscale.com/install.sh \| sh` |
| Autenticar host | `sudo tailscale up` |
| Instalar en PC | Descargar desde [tailscale.com/download](https://tailscale.com/download) |
| Conectar SSH | `ssh khosting-admin@<ip-tailscale>` |

## Configuración en el host

Tailscale se instala como parte de la [configuración inicial del servidor](../infrastructure/server-setup.md). El host aparece en la tailnet con su IP asignada por Tailscale o MagicDNS.

## Qué NO hace Tailscale

- No reemplaza Cloudflare Tunnel para servicios web
- No actúa como reverse proxy
- No expone puertos de contenedores a Internet

## Seguridad

- Autenticación vía cuenta Tailscale (OAuth)
- ACLs configurables en el panel de Tailscale
- SSH protegido adicionalmente con claves y UFW en el host

## Enlaces relacionados

- [Flujos de acceso](../architecture/access-flows.md)
- [Runbook SSH vía Tailscale](../runbooks/ssh-tailscale.md)
- [Troubleshooting SSH](../troubleshooting/ssh-tailscale.md)
