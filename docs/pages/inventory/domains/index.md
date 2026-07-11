# Dominios

Dominios gestionados en Cloudflare DNS para servicios del homelab.

## Tabla de dominios

Completar con los hostnames reales:

| Dominio | Servicio | Túnel | NPM Proxy Host |
|---------|----------|-------|----------------|
| _docs.ejemplo.com_ | MkDocs | Sí | `mkdocs:80` |
| _jenkins.ejemplo.com_ | Jenkins | Sí | `jenkins:8080` |
| _app.ejemplo.com_ | Kashflow | Sí | _contenedor:puerto_ |

## Gestión

1. Registrar dominio en Cloudflare
2. Crear registro CNAME apuntando al túnel
3. Configurar proxy host en NPM
4. Actualizar esta tabla

## Enlaces relacionados

- [DNS](../../networking/dns.md)
- [Reverse proxy](../reverse-proxy/index.md)
- [Certificados](../certificates/index.md)
