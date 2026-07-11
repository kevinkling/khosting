# Puertos y binds

Servicio no accesible en la IP o puerto esperado.

## Síntomas

- `Connection refused` al acceder a `192.168.1.6:PUERTO`
- Servicio accesible en localhost pero no desde otro dispositivo en LAN

## Diagnóstico

### 1. Verificar que el contenedor está corriendo

```bash
docker compose ps <servicio>
```

### 2. Verificar bind del puerto

```bash
docker compose port <servicio> <puerto-interno>
ss -tlnp | grep <puerto>
```

### 3. Verificar IP del host

```bash
ip addr show | grep 192.168.1
```

Los servicios de gestión se publican en `192.168.1.6` (WiFi).

## Convención de binds

| Patrón | Significado |
|--------|-------------|
| `80:80` | Todas las interfaces (NPM) |
| `192.168.1.6:9000:9000` | Solo WiFi (Portainer, etc.) |
| `expose` sin `ports` | Solo accesible desde otros contenedores |

## Causas comunes

| Causa | Solución |
|-------|----------|
| IP WiFi cambió | Actualizar binds en compose |
| Contenedor no levantado | `docker compose up -d <servicio>` |
| Puerto en uso | `ss -tlnp \| grep <puerto>` y liberar |
| Firewall del host | `sudo ufw status` |

## Cambiar bind de un servicio

Editar el compose correspondiente y recrear:

```bash
docker compose up -d <servicio>
```

## Enlaces relacionados

- [Topología de red](../architecture/network-topology.md)
- [Puertos en inventario](../inventory/networking/ports/index.md)
