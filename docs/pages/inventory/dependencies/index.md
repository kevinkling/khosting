# Dependencias

Dependencias entre servicios del homelab.

## Grafo de dependencias

```mermaid
graph TD
  NPM[nginx-proxy-manager] --> CF[cloudflared]
  NPM --> Jenkins
  NPM --> Kashflow
  NPM --> MkDocs

  Jenkins --> DockerSocket[Docker socket]
  Jenkins --> KashflowVol[/workspace/kashflow]

  Duplicati --> NPMVol[npm-data]
  Duplicati --> LetsEncrypt[npm-letsencrypt]
  Duplicati --> PortainerVol[portainer-data]
  Duplicati --> JenkinsVol[jenkins-data]

  BackupSvc[backup-service] --> KashflowData[kashflow_kashflow-data]

  Portainer --> DockerSocket
  Glances --> DockerSocket
```

## Dependencias de arranque

| Servicio | Depende de |
|----------|------------|
| cloudflared | nginx-proxy-manager |
| Todos los demás | hosting-network (creada por compose raíz) |

## Orden recomendado de arranque

1. Red `hosting-network` (automático con `docker compose up`)
2. nginx-proxy-manager
3. cloudflared
4. Resto de servicios (sin orden estricto)

## Enlaces relacionados

- [Esquema](../../architecture/index.md)
- [Docker](../../infrastructure/docker.md)
