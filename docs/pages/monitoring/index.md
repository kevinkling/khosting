# Monitoreo

Observabilidad, métricas y dashboards del homelab.

## Estado actual

| Herramienta | Estado | Acceso |
|-------------|--------|--------|
| [Glances](../services/glances.md) | Activo | `http://192.168.1.6:61208` |
| Grafana | Pendiente | — |
| Prometheus | Pendiente | — |

## Glances

Monitor en tiempo real del host y contenedores Docker. Cubre CPU, memoria, disco, red y procesos.

```bash
# Ver logs
docker compose logs -f glances
```

## Futuro

Cuando se desplieguen Grafana y Prometheus:

- Métricas de contenedores vía cAdvisor o node-exporter
- Dashboards de uso de recursos
- Alertas por umbrales

Las variables `GRAFANA_USER` y `GRAFANA_PASSWORD` ya están preparadas en `.env.example`.

## Enlaces relacionados

- [Servicio Glances](../services/glances.md)
- [Inventario de contenedores](../inventory/docker/containers/index.md)
