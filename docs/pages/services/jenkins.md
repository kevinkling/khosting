# Jenkins

Servidor CI/CD para pipelines automatizados. Deploy principal: Kashflow.

## Información

| Campo | Valor |
|-------|-------|
| Contenedor | `jenkins` |
| Imagen | Build local (`Dockerfile.jenkins`) |
| Compose | `infra/docker-compose.infra.yml` |
| Red | `hosting-network` |

## Puertos

| Puerto | Exposición | Uso |
|--------|------------|-----|
| 8080 | Solo Docker (`expose`) | UI web |
| 50000 | Solo Docker (`expose`) | Agentes |

Jenkins se publica vía NPM + Cloudflare Tunnel (proxy host configurado en NPM).

## Volúmenes

| Montaje | Uso |
|---------|-----|
| `jenkins-data:/var/jenkins_home` | Datos persistentes |
| `/var/run/docker.sock` | Ejecutar Docker desde pipelines |
| `..:/khosting` | Repositorio del homelab |
| `/home/khosting-admin/workspace/kashflow:/workspace/kashflow` | Proyecto Kashflow |

## Recursos

| Límite | Valor |
|--------|-------|
| Memoria máxima | 1 GB |
| Memoria reservada | 256 MB |
| JAVA_OPTS | `-Xmx768m -Xms256m` |

## Pipeline principal

Ver [Jenkins — Kashflow](../automation/jenkins-kashflow.md).

## Enlaces relacionados

- [Automatización](../automation/index.md)
- [Cheatsheet Docker](../cheatsheets/docker.md)
