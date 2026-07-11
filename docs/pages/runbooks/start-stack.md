# Levantar el stack

Procedimiento para iniciar todos los servicios del homelab.

## Prerrequisitos

- Docker y Docker Compose instalados
- Archivo `.env` configurado en la raíz del proyecto
- Red `hosting-network` (se crea automáticamente)

## Pasos

### 1. Ir al directorio del proyecto

```bash
cd /ruta/a/khosting
```

### 2. Verificar `.env`

```bash
# Confirmar que existen las variables necesarias
grep -c CLOUDFLARE_TOKEN .env
```

### 3. Levantar servicios

```bash
docker compose up -d
```

### 4. Verificar estado

```bash
docker compose ps
```

Todos los contenedores deben estar `running` o `healthy`.

### 5. Verificar acceso

| Servicio | Verificación |
|----------|-------------|
| NPM | `curl -I http://192.168.1.6:81` |
| Glances | Abrir `http://192.168.1.6:61208` |
| Portainer | Abrir `http://192.168.1.6:9000` |
| Túnel | `docker compose logs cloudflared --tail 20` |

## Orden de arranque

Docker Compose respeta `depends_on`. El túnel espera a NPM automáticamente.

## Enlaces relacionados

- [Docker](../infrastructure/docker.md)
- [Cheatsheet Docker](../cheatsheets/docker.md)
