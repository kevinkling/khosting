# KHosting - Infraestructura Docker

Infraestructura modular de servicios Docker organizados por categorías.

## 📋 Requisitos

- **Docker** y **Docker Compose** instalados
- Archivo `.env` configurado en la raíz

## 🚀 Uso Rápido

### Iniciar todos los servicios
```bash
docker-compose up -d
```


## 📦 Módulos

### **infra/** - Infraestructura base
Servicios core y utilidades generales:
- Nginx Proxy Manager
- Cloudflare Tunnel
- Jenkins (CI/CD)
- Adminer
- Portainer
- Duplicati (Backups)

### **monitoring/** - Monitoreo
Prometheus, Grafana y herramientas de observabilidad

### **others/** - Servicios diversos
Contenedores experimentales o de prueba

## 🤖 Aplicaciones Desplegadas

### Komprabot (Bot de Telegram)
**Deploy**: Automático vía Jenkins CI/CD desde GitHub
- Push a `main` → Webhook → Jenkins → Build → Deploy
- **No** incluido en este repositorio (repo separado)
- Variables configuradas como secretos en Jenkins

## 📝 Configuración

Edita el archivo `.env` en la raíz con las variables necesarias para cada servicio.


## 📂 Estructura del Proyecto

```
khosting/
├── docker-compose.yml              # Orquestador principal (usa 'include')
├── .env                            # Variables de entorno
├── .env.example                    # Template de variables
├── infra/
│   ├── docker-compose.infra.yml    # Servicios de infraestructura
│   └── Dockerfile.jenkins          # Jenkins con Docker CLI
├── monitoring/
│   └── docker-compose.monitoring.yml # Prometheus, Grafana, Node Exporter
├── prometheus/
│   └── prometheus.yml              # Configuración de Prometheus
└── others/
    └── docker-compose.others.yml    # Servicios diversos/experimentales

Aplicaciones (repos separados con CI/CD):
- komprabot → https://github.com/usuario/komprabot (deploy automático)
```