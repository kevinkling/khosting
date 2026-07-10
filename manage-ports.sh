#!/bin/bash

# Script para abrir/cerrar puertos de servicios en UFW

# Verificar que se pasó un parámetro
if [ -z "$1" ]; then
    echo "Uso: $0 [open|close]"
    echo "  open  - Abre los puertos para red local"
    echo "  close - Cierra los puertos"
    exit 1
fi

# Array de puertos y sus descripciones
declare -A ports=(
    [81]="Nginx Proxy Manager"
    [9000]="Portainer"
#    [8090]="Adminer"
    [8200]="Duplicati"
#    [8100]="Jenkins"
#    [3000]="Grafana"
#    [9090]="Prometheus"
)

case "$1" in
    open)
        echo "Abriendo puertos para servicios locales..."
        for port in "${!ports[@]}"; do
            sudo ufw allow from 192.168.1.0/24 to any port $port comment "${ports[$port]}"
            echo "✓ Puerto $port abierto - ${ports[$port]}"
        done
        ;;
    close)
        echo "Cerrando puertos de servicios..."
        for port in "${!ports[@]}"; do
            sudo ufw delete allow from 192.168.1.0/24 to any port $port
            echo "✓ Puerto $port cerrado - ${ports[$port]}"
        done
        ;;
    *)
        echo "Error: Parámetro inválido '$1'"
        echo "Uso: $0 [open|close]"
        exit 1
        ;;
esac

echo ""
echo "Estado actual del firewall:"
sudo ufw status numbered
echo ""
echo "¡Listo!"
