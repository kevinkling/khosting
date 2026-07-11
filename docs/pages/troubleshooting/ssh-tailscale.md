# SSH por Tailscale

No se puede conectar al host vía SSH a través de Tailscale.

## Síntomas

- `ssh: connect to host <ip> port 22: Connection refused`
- `ssh: connect to host <ip> port 22: Connection timed out`
- El host no aparece en `tailscale status`

## Diagnóstico

### 1. Verificar Tailscale en el PC

```bash
tailscale status
```

El host `khosting` debe aparecer como online.

### 2. Verificar Tailscale en el host

Conectarse por LAN si es posible:

```bash
sudo tailscale status
sudo systemctl status tailscaled
```

### 3. Verificar SSH en el host

```bash
sudo systemctl status ssh
sudo ufw status
```

SSH debe estar activo y permitido en UFW.

## Causas comunes

| Causa | Solución |
|-------|----------|
| Tailscale no autenticado en host | `sudo tailscale up` |
| Tailscale no autenticado en PC | Iniciar sesión en la app |
| SSH deshabilitado | `sudo systemctl enable --now ssh` |
| UFW bloquea SSH | `sudo ufw allow ssh` |
| Nodos en tailnets distintas | Verificar cuenta Tailscale |

## Solución

```bash
# En el host
sudo tailscale up
sudo systemctl restart ssh

# En el PC
tailscale ping khosting
ssh khosting-admin@<ip-tailscale>
```

## Enlaces relacionados

- [Runbook SSH vía Tailscale](../runbooks/ssh-tailscale.md)
- [Tailscale](../networking/tailscale.md)
