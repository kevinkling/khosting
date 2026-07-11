# Configuración inicial del servidor

Pasos de hardening y configuración base del host `khosting`.

## Pasos obligatorios

### Actualizar sistema

```bash
sudo apt-get update && sudo apt-get upgrade -y
```

### Conectividad

Conectarse por WiFi o Ethernet para habilitar acceso SSH.

Configurar WiFi con `nmtui` (NetworkManager Text User Interface).

### SSH

- Desactivar login de root: agregar `PermitRootLogin no` en `/etc/ssh/sshd_config`
- Verificar: `sudo sshd -T | grep permitrootlogin` debe devolver `no`
- Crear clave SSH en el PC cliente y copiar el contenido en `~/.ssh/authorized_keys` del servidor

### Firewall (UFW)

```bash
sudo ufw allow ssh
sudo ufw show added
sudo ufw enable
```

### Protección

- Instalar `fail2ban` (bloqueo por fuerza bruta)
- Deshabilitar suspensión al cerrar tapa (notebook)

## Instalaciones secundarias

| Software | Uso |
|----------|-----|
| Tailscale | VPN mesh para acceso SSH remoto |
| Docker + Docker Compose | Orquestación de servicios |
| Node.js LTS | Herramientas de desarrollo |
| lm-sensors, neovim, btop, zsh | Utilidades del sistema |

### Shell Zsh

```bash
chsh -s $(which zsh)
```

Instalar Oh My Zsh según preferencia.

## Tailscale (acceso SSH)

Tailscale se instala en el host y en cada PC desde donde se administra.

1. Instalar: [tailscale.com/download](https://tailscale.com/download)
2. Autenticar: `sudo tailscale up`
3. Conectar por SSH usando la IP Tailscale del host

!!! note "Solo SSH"
    Tailscale no enruta tráfico de servicios web. Ver [Tailscale](../networking/tailscale.md).

## Configuración general

### Zona horaria

```bash
sudo timedatectl set-timezone America/Argentina/Buenos_Aires
```

## Docker

Instalar Docker Engine y el plugin Compose según la [documentación oficial](https://docs.docker.com/engine/install/ubuntu/).

```bash
# Verificar instalación
docker --version
docker compose version

# Levantar el stack del homelab
cd /ruta/a/khosting
docker compose up -d
```

Ver [Docker](docker.md) para la estructura de composes y la red compartida.

## Enlaces relacionados

- [Infraestructura](index.md)
- [Seguridad](../security/index.md)
- [Runbook SSH vía Tailscale](../runbooks/ssh-tailscale.md)
- [Volver al inicio](../index.md)
