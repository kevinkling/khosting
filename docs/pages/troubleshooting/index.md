# Troubleshooting

Guías para diagnosticar y resolver problemas comunes.

## Problemas frecuentes

| Problema | Guía |
|----------|------|
| Servicios públicos caídos | [Túnel Cloudflare](cloudflare-tunnel.md) |
| Proxy no enruta tráfico | [NPM no enruta](npm-routing.md) |
| No puedo conectar por SSH | [SSH por Tailscale](ssh-tailscale.md) |
| Puerto no accesible en LAN | [Puertos y binds](port-binds.md) |

## Diagnóstico general

```bash
# Estado de todos los contenedores
docker compose ps

# Logs de un servicio
docker compose logs -f <servicio>

# Verificar red Docker
docker network inspect hosting-network
```

## Enlaces relacionados

- [Runbooks](../runbooks/index.md)
- [Cheatsheets](../cheatsheets/index.md)
