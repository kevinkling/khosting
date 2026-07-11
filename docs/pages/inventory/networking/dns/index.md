# DNS — Inventario

Registros DNS y dominios gestionados.

## Proveedor

Cloudflare DNS para todos los dominios públicos.

## Patrón

| Tipo | Uso |
|------|-----|
| CNAME | Subdominio → túnel Cloudflare |
| A | No usado (túnel evita exponer IP) |

## Dominios

Ver [Dominios](../../domains/index.md) para la tabla completa.

## DNS interno

- **LAN:** acceso por IP directa (`192.168.1.6`)
- **Tailscale:** MagicDNS para resolver el host en la tailnet

## Enlaces relacionados

- [DNS — Redes](../../../networking/dns.md)
- [Dominios](../../domains/index.md)
