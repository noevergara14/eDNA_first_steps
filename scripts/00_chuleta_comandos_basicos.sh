#!/bin/bash
# ==============================================================================
# CHULETA DE COMANDOS BÁSICOS DE LINUX (UBUNTU) PARA EL TFM
# Nota: Este archivo es una guía de consulta y práctica, no un script automático.
# ==============================================================================

# --- 1. ORIENTACIÓN Y LISTADO ---
pwd             # Muestra en qué carpeta estás ahora mismo (tu GPS)
ls              # Lista los archivos y carpetas visibles aquí
ls -la          # Lista todo, incluidos archivos ocultos (con punto) y permisos
ls -lh          # Lista archivos mostrando su tamaño en KB, MB o GB

# --- 2. NAVEGACIÓN ENTRE CARPETAS (cd = Change Directory) ---
cd ~/tfm_edna   # Ir directo a la carpeta principal del TFM
cd scripts      # Entrar en la subcarpeta 'scripts' (si estás dentro de tfm_edna)
cd ..           # Retroceder una carpeta hacia atrás (subir un nivel)
cd ~            # Ir a tu carpeta personal raíz (/home/usuario)
cd -            # Volver a la carpeta exacta donde estabas justo antes

# --- 3. GESTIÓN DE ARCHIVOS Y CARPETAS ---
mkdir prueba    # Crear una carpeta nueva llamada 'prueba'
cp a.txt b.txt  # Copiar 'a.txt' creando una copia llamada 'b.txt'
mv b.txt c.txt  # Renombrar 'b.txt' a 'c.txt' (o moverlo a otra carpeta)
rm c.txt        # Borrar el archivo 'c.txt' (¡Cuidado! No hay papelera)
rmdir prueba    # Borrar una carpeta vacía llamada 'prueba'

# --- 4. INSPECCIÓN SEGURA DE ARCHIVOS GRANDES ---
head -n 8 archivo.fastq   # Ver solo las primeras 8 líneas (2 secuencias FASTQ)
tail -n 8 archivo.fastq   # Ver solo las últimas 8 líneas
less archivo.txt          # Leer un archivo página a página (salir pulsando 'q')
clear                     # Limpiar el texto de la pantalla (también Ctrl + L)

# --- 5. INTERFAZ VISUAL CON WINDOWS ---
explorer.exe .   # Abre el Explorador de Archivos de Windows exactamente en la carpeta de Ubuntu donde estés
