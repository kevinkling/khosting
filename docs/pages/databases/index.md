# Bases de datos

Estado de bases de datos en el homelab.

## Estado actual

No hay motores de base de datos desplegados como contenedores independientes en el stack principal.

| Motor | Estado | Notas |
|-------|--------|-------|
| PostgreSQL | Pendiente | Variables preparadas en `.env.example` |
| MySQL | Pendiente | Variables preparadas en `.env.example` |

## Kashflow

La aplicación Kashflow (desplegada en `/workspace/kashflow`) tiene su propia base de datos gestionada por su compose independiente. El volumen `kashflow_kashflow-data` se respalda por `backup-service`.

## Variables preparadas

En `.env.example` ya existen placeholders para cuando se desplieguen:

```
POSTGRES_DB, POSTGRES_USER, POSTGRES_PASSWORD
MYSQL_ROOT_PASSWORD, MYSQL_DATABASE, MYSQL_USER, MYSQL_PASSWORD
```

## Futuro

Al agregar PostgreSQL o MySQL:

1. Crear compose en un stack dedicado
2. Conectar a `hosting-network`
3. Documentar en inventario y servicios
4. Agregar volúmenes a Duplicati y backup-service

## Enlaces relacionados

- [Backup Service](../services/backup-service.md)
- [Variables en inventario](../inventory/variables/index.md)
