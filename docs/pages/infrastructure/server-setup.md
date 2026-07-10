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
sudo ufw show added    # verificar regla
sudo ufw enable
```

### Protección

- Instalar `fail2ban` (bloqueo por fuerza bruta)
- Deshabilitar suspensión al cerrar tapa (notebook)

## Instalaciones secundarias

- Tailscale (VPN peer-to-peer)
- Node.js LTS
- Utilidades: `lm-sensors`, `neovim`, `btop`, `zsh`

### Shell Zsh

```bash
chsh -s $(which zsh)
```

Instalar Oh My Zsh según preferencia.

## Configuración general

### Zona horaria

```bash
sudo timedatectl set-timezone America/Argentina/Buenos_Aires
```

### Acceso SSH desde internet

<!-- Documentar configuración DNS/túnel cuando corresponda -->

## Docker

<!-- Ver sección de instalación Docker — pendiente de documentar pasos detallados -->

## Enlaces relacionados

- [Infraestructura](index.md)
- [Volver al inicio](../index.md)
