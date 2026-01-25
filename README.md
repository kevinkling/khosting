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
Servicios core y utilidades generales

### **kashflow/** - Sistema Kashflow
Servicios relacionados con Kashflow

### **komprabot/** - Sistema Komprabot
Servicios del bot de compras

### **monitoring/** - Monitoreo
Prometheus, Grafana y herramientas de observabilidad

### **otros/** - Servicios diversos
Contenedores experimentales o de prueba (Emulatorjs, etc.)

## 📝 Configuración

Edita el archivo `.env` en la raíz con las variables necesarias para cada servicio.


## 📂 Estructura del Proyecto

```
khosting/
├── docker-compose.yml              # Orquestador principal
├── .env                            # Variables de entorno
├── infra/
│   └── docker-compose.infra.yml    # Servicios de infraestructura
├── kashflow/
│   └── docker-compose.kashflow.yml # Servicios Kashflow
├── komprabot/
│   └── docker-compose.komprabot.yml # Servicios Komprabot
├── monitoring/
│   ├── docker-compose.monitoring.yml # Prometheus, Grafana
│   ├── prometheus.yml
│   ├── datasources.yml
│   └── dashboards.yml
└── otros/
    └── docker-compose.otros.yml    # Servicios diversos/experimentales
```