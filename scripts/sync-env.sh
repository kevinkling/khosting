#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

EXAMPLE="$ROOT/.env.example"
ENV_FILE="$ROOT/.env"

if [[ ! -f "$EXAMPLE" ]]; then
  echo "Error: no se encuentra .env.example" >&2
  exit 1
fi

if [[ ! -f "$ENV_FILE" ]]; then
  cp "$EXAMPLE" "$ENV_FILE"
  echo "Creado .env desde .env.example"
  exit 0
fi

added=0
while IFS= read -r line || [[ -n "$line" ]]; do
  [[ "$line" =~ ^[[:space:]]*# ]] && continue
  [[ -z "${line//[[:space:]]/}" ]] && continue
  if [[ "$line" =~ ^([A-Za-z_][A-Za-z0-9_]*)= ]]; then
    key="${BASH_REMATCH[1]}"
    if ! grep -q "^${key}=" "$ENV_FILE"; then
      if [[ -s "$ENV_FILE" ]] && [[ -n "$(tail -c1 "$ENV_FILE" 2>/dev/null || true)" ]]; then
        printf '\n' >> "$ENV_FILE"
      fi
      printf '%s\n' "$line" >> "$ENV_FILE"
      echo "Agregado: $key"
      added=$((added + 1))
    fi
  fi
done < "$EXAMPLE"

if [[ "$added" -eq 0 ]]; then
  echo "Nada que agregar; .env ya tiene todas las claves de .env.example"
else
  echo "Listo: $added clave(s) agregada(s)"
fi
