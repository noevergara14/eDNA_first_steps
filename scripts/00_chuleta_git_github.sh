#!/bin/bash
# ==============================================================================
# CHULETA DE GIT Y GITHUB PARA EL TFM
# Nota: Guía de consulta rápida para guardar y subir cambios a la nube.
# ==============================================================================

# --- 1. COMPROBAR ESTADO (Siempre empezar por aquí) ---
cd ~/tfm_edna               # Asegurarse de estar en la carpeta raíz del proyecto
git status                  # Ver qué archivos nuevos (rojo) o listos (verde) hay

# --- 2. EL RITUAL DE LOS 3 PASOS PARA SUBIR CAMBIOS ---
git add scripts/archivo.sh  # Paso 1: Meter un archivo concreto en la "caja"
git add .                   # (Alternativa) Meter TODOS los cambios nuevos de golpe
git commit -m "Mensaje"     # Paso 2: Cerrar y etiquetar la caja con qué hiciste
git push                    # Paso 3: Enviar la caja a tu repositorio en GitHub

# --- 3. TRAER CAMBIOS DESDE GITHUB (Si editaste algo en la web) ---
git pull                    # Descargar cambios de GitHub a tu ordenador
