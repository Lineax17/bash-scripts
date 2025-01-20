#!/bin/bash

# Definiere die zu überprüfenden Parameter
PARAMS=(
    "max_parallel_downloads=10"
    "fastestmirror=True"
)

# Datei, die editiert werden soll
CONFIG_FILE="/etc/dnf/dnf.conf"

# Funktion zum Überprüfen, ob ein Parameter bereits gesetzt ist
check_param() {
    grep -q "$1" "$CONFIG_FILE"
}

# Ändere die DNF-Konfiguration, wenn die Parameter fehlen
edit_dnf_conf() {
    echo "Änderungen an der DNF-Konfiguration vornehmen..."

    # Füge Parameter hinzu, wenn sie nicht gefunden wurden
    for param in "${PARAMS[@]}"; do
        if ! check_param "$param"; then
            echo "$param" | sudo tee -a "$CONFIG_FILE" > /dev/null
            echo "$param wurde hinzugefügt."
        else
            echo "$param ist bereits vorhanden."
        fi
    done

    echo "Konfiguration abgeschlossen."
}

# Starte die Bearbeitung der DNF-Konfiguration
edit_dnf_conf
