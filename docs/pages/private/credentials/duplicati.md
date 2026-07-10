---
visibility: private
service: duplicati
---

# Duplicati — Credenciales

| Campo | Valor |
|-------|-------|
| URL | http://192.168.1.6:8200 |
| Contraseña web | duplicati2026 |
| Clave de cifrado (restore) | Dupl1c@t1Encrypt10nK3y2026SecureRandom |

## Notas

- La clave de cifrado se configura vía variable `DUPLICATI_ENCRYPTION_KEY` en `.env`
- La contraseña web se configura vía `DUPLICATI_PASSWORD` en `.env`
