# Backup con Duplicati

Ejecutar y verificar backups de volúmenes Docker.

## Acceso

Abrir `http://192.168.1.6:8200` desde la LAN.

Las credenciales se configuran vía `DUPLICATI_PASSWORD` en `.env`.

## Volúmenes respaldados

| Volumen | Ruta en Duplicati |
|---------|-------------------|
| npm-data | `/source/nginx-proxy-manager` |
| npm-letsencrypt | `/source/letsencrypt` |
| portainer-data | `/source/portainer` |
| jenkins-data | `/source/jenkins` |

## Verificar último backup

1. Acceder a la UI de Duplicati
2. Ir a la tarea de backup configurada
3. Verificar fecha y estado del último run

## Backup manual

1. En Duplicati, seleccionar la tarea de backup
2. Clic en **Run now**
3. Esperar a que complete
4. Verificar en el log que no haya errores

## Verificar desde CLI

```bash
docker compose logs duplicati --tail 30
```

## Restaurar

1. En Duplicati, ir a **Restore**
2. Seleccionar el backup y los archivos
3. Elegir destino de restauración
4. Verificar el servicio afectado después de restaurar

## Enlaces relacionados

- [Servicio Duplicati](../services/duplicati.md)
- [Backups en inventario](../inventory/backups/index.md)
