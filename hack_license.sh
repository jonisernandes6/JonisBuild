#!/bin/bash

# Directorio donde se guardan las preferencias de la app
PREFS_DIR="/data/data/com.jonis.apk/shared_prefs/"
PREFS_FILE="$PREFS_DIR/jonis_config.xml"

echo "[*] Iniciando hack de licencia..."

# 1. Detener la app para evitar conflictos
am force-stop com.jonis.apk

# 2. Inyectar valores de licencia "válida"
# Modificamos el archivo XML de preferencias para incluir claves que la app espera
cat > "$PREFS_FILE" << 'XML'
<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="license_valid">true</string>
    <string name="device_id">HACKED_DEVICE_001</string>
    <boolean name="Premium_Active" value="true" />
    <!-- Copiamos aquí cualquier otra preferencia que ya tengas -->
</map>
XML

# 3. Reiniciar la app
am start -n com.jonis.apk/.MainActivity

echo "[+] Licencia inyectada. Abriendo app..."
