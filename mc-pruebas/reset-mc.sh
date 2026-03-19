#!/bin/bash

# --- CONFIGURACIÓN ---
SERVER_CONTAINER="mc-custom-server"
BACKUP_CONTAINER="mc-backup"
# ---------------------

# Función para enviar mensajes rojos y bonitos al chat
send_msg() {
  docker exec $SERVER_CONTAINER rcon-cli tellraw @a "{\"text\":\"[SISTEMA] $1\",\"color\":\"red\",\"bold\":true}"
}

# 1. Secuencia de Aviso (Cuenta regresiva)
echo "Iniciando protocolo de mantenimiento..."

send_msg "El servidor se reiniciará en 5 MINUTOS para Mantenimiento y Backup."
sleep 240 # Espera 4 minutos

send_msg "¡Atención! Reinicio en 1 MINUTO. Guardando inventarios..."
sleep 50 # Espera 50 segundos

send_msg "Reinicio en 10 SEGUNDOS. Por favor desconéctese."
sleep 5

# 2. Forzar el Backup (Aquí ocurre la magia)
send_msg "Iniciando COPIA DE SEGURIDAD automática..."
echo "Ejecutando backup en contenedor $BACKUP_CONTAINER..."

# Este comando fuerza al contenedor de backup a trabajar AHORA MISMO
# (Pausa el server, guarda, comprime y reanuda)
docker exec $BACKUP_CONTAINER /usr/bin/backup

# 3. El Reinicio
send_msg "Backup completado. REINICIANDO AHORA..."
sleep 2
echo "Reiniciando servidor..."
docker restart $SERVER_CONTAINER

echo "¡Proceso terminado exitosamente!"
