# Docker

Configuración y convenciones de Docker en el homelab.

## Orquestador raíz

El archivo `docker-compose.yml` en la raíz del repositorio usa `include` para agrupar stacks:

| Stack | Archivo | Servicios |
|-------|---------|-----------|
| Infra | `infra/docker-compose.infra.yml` | NPM, cloudflared, Portainer, Duplicati, Jenkins, backup-service |
| Monitoreo | `monitoring/docker-compose.monitoring.yml` | Glances |
| Otros | `others/docker-compose.others.yml` | FileBrowser |
| Docs | `docs/docker-compose.docs.yml` | MkDocs |

## Red compartida: hosting-network

```yaml
networks:
  hosting-network:
    driver: bridge
    driver_opts:
      com.docker.network.bridge.name: br-hosting
```

Los composes hijos declaran la red como externa:

```yaml
networks:
  hosting-network:
    name: hosting-network
    external: true
```

## Convención de binds

| Tipo | Patrón | Ejemplo |
|------|--------|---------|
| Público (túnel + LAN) | `80:80`, `443:443` | NPM |
| Solo LAN | `192.168.1.6:PUERTO:PUERTO` | Portainer, Duplicati |
| Solo Docker | `expose` sin `ports` | Jenkins |

La IP `192.168.1.6` corresponde a la interfaz WiFi del host.

## Comandos habituales

```bash
# Levantar todo el stack
docker compose up -d

# Ver estado
docker compose ps

# Logs de un servicio
docker compose logs -f nginx-proxy-manager

# Reiniciar un servicio
docker compose restart cloudflared
```

## Seguridad en contenedores

La mayoría de servicios usan `security_opt: no-new-privileges:true` para evitar escalada de privilegios.

## Enlaces relacionados

- [Topología de red](../architecture/network-topology.md)
- [Inventario de contenedores](../inventory/docker/containers/index.md)
- [Cheatsheet Docker](../cheatsheets/docker.md)
- [Runbook: levantar el stack](../runbooks/start-stack.md)
