# NPM no enruta

Nginx Proxy Manager no envía tráfico al servicio destino.

## Síntomas

- Error 502 Bad Gateway al acceder a un dominio
- Error 504 Gateway Timeout
- Dominio resuelve pero no carga el servicio

## Diagnóstico

### 1. Verificar que NPM está corriendo

```bash
docker compose ps nginx-proxy-manager
curl -I http://localhost:80
```

### 2. Verificar proxy host en NPM

Acceder a `http://192.168.1.6:81` y revisar:

- Dominio configurado correctamente
- Forward hostname apunta al nombre del contenedor (no `localhost`)
- Puerto del contenedor destino es correcto
- SSL configurado si se accede por HTTPS

### 3. Verificar que el contenedor destino está activo

```bash
docker compose ps <servicio-destino>
```

### 4. Probar conectividad interna

```bash
docker compose exec nginx-proxy-manager curl -I http://<contenedor>:<puerto>
```

## Causas comunes

| Causa | Solución |
|-------|----------|
| Contenedor destino caído | `docker compose up -d <servicio>` |
| Hostname incorrecto en proxy host | Usar nombre del contenedor en `hosting-network` |
| Puerto incorrecto | Verificar `expose`/`ports` del contenedor |
| Certificado SSL expirado | Renovar en panel NPM |

## Enlaces relacionados

- [Nginx Proxy Manager](../networking/nginx-proxy-manager.md)
- [Reverse proxy en inventario](../inventory/reverse-proxy/index.md)
