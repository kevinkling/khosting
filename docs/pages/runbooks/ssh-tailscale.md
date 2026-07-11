# Acceso SSH vía Tailscale

Conectar al host `khosting` de forma remota usando Tailscale.

## Prerrequisitos

- Tailscale instalado en el PC y en `khosting`
- Ambos nodos autenticados en la misma tailnet
- Clave SSH configurada en el host

## Pasos

### 1. Verificar Tailscale en el PC

```bash
tailscale status
```

Debe mostrar `khosting` en la lista de nodos.

### 2. Obtener IP del host

```bash
tailscale status | grep khosting
```

O usar MagicDNS: `khosting.<tailnet>.ts.net`

### 3. Conectar por SSH

```bash
ssh khosting-admin@<ip-tailscale>
```

### 4. Verificar acceso

```bash
hostname    # debe devolver: khosting
docker compose ps
```

## Configuración inicial de Tailscale en el host

```bash
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up
```

## Enlaces relacionados

- [Tailscale](../networking/tailscale.md)
- [Troubleshooting SSH](../troubleshooting/ssh-tailscale.md)
- [Configuración del servidor](../infrastructure/server-setup.md)
