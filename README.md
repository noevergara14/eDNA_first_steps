cat << 'EOF' > ~/tfm_edna/scripts/01_instalacion_y_entorno.sh
#!/bin/bash
# ==============================================================================
# TFM eDNA (12S) - ETAPA 1: Instalación y configuración del entorno
# Nota: Este archivo sirve como registro documentado de los pasos ejecutados.
# NO ejecutar entero de nuevo, ya que el entorno ya está instalado.
# ==============================================================================

# --- BLOQUE A: Configuración de Windows y Ubuntu (WSL2) ---

# 1. Instalar Ubuntu desde PowerShell (en Windows como Administrador)
wsl --install

# 2. Abrir Ubuntu desde PowerShell
wsl.exe -d Ubuntu

# 3. Actualizar los paquetes base del sistema Ubuntu
sudo apt update && sudo apt upgrade -y


# --- BLOQUE B: Instalación de Miniforge y herramientas bioinformáticas ---

# 4. Descargar el instalador de Miniforge (gestor de entornos Conda)
wget -q "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" -O miniforge.sh

# 5. Ejecutar el instalador en modo automático (-b) dentro de ~/miniforge3 (-p)
# (Esto evita errores de ruta al responder manualmente a la licencia)
bash miniforge.sh -b -p ~/miniforge3
rm miniforge.sh

# 6. Inicializar Conda en Bash y recargar la configuración de la terminal
~/miniforge3/bin/conda init bash
source ~/.bashrc

# 7. Crear el entorno virtual 'edna_env' con los canales bioconda y conda-forge
# Incluye: cutadapt (recorte primers), vsearch/swarm (clustering), seqkit (stats) y R
conda create -n edna_env -c bioconda -c conda-forge cutadapt vsearch swarm seqkit r-base -y

# 8. Activar el entorno virtual para empezar a trabajar
conda activate edna_env

# 9. Comprobar que las herramientas responden correctamente con su versión
cutadapt --version
vsearch --version
seqkit version


# --- BLOQUE C: Estructura del proyecto y conexión con GitHub ---

# 10. Clonar el repositorio remoto de GitHub en la carpeta local ~/tfm_edna
git clone https://github.com/noevergara14/eDNA_first_steps.git ~/tfm_edna

# 11. Crear las subcarpetas estándar para datos crudos y scripts
mkdir -p ~/tfm_edna/scripts ~/tfm_edna/data

# 12. Verificar la conexión remota con GitHub
cd ~/tfm_edna
git remote -v


# --- BLOQUE D: Script de arranque diario (~/iniciar_tfm.sh) ---

# 13. Crear un atajo en la carpeta personal para entrar al proyecto y activar el entorno
cat << 'INNER_EOF' > ~/iniciar_tfm.sh
#!/bin/bash
cd ~/tfm_edna
conda activate edna_env
cutadapt --version
vsearch --version
seqkit version
pwd
ls -la
INNER_EOF

# 14. Comando único a ejecutar cada vez que se abre Ubuntu desde cero:
source ~/iniciar_tfm.sh
EOF
