#!/bin/bash
python3 /Users/marjandjordjevic/Down#!/bin/bash

# Absoluter Pfad zur aktuellen Datei (damit es überall funktioniert)
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="$DIR/logs"
LOG_FILE="$LOG_DIR/runtime.log"

# Log-Verzeichnis erstellen, falls nicht vorhanden
mkdir -p "$LOG_DIR"

# Start-Logik mit Auto-Restart bei Fehlern
while true; do
    echo "[`date`] Starte AIA Agent..." | tee -a "$LOG_FILE"
    python3 "$DIR/main.py" >> "$LOG_FILE" 2>&1
    echo "[`date`] Agent abgestürzt. Neustart in 5 Sekunden..." | tee -a "$LOG_FILE"
    sleep 5
done
loads/AIA-Autonom-Max/main.py

