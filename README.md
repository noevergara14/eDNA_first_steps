# eDNA_first_steps
# 1. install Ubuntu from Power Shell
wsl --install

# 2. Abrir Ubuntu
wsl.exe -d Ubuntu

# 3. update and check Ubuntu
sudo apt update && sudo apt upgrade -y

# 4. install Miniforge to create a "virtual environment" 
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" 

# 5. run the programme (review license & accept)
bash Miniforge3-(uname)-(uname -m).sh 

# 6. actualize the terminal
source ~/.bashrc 

# 7. Crear el entorno virtual con Python 3.10 y las herramientas necesarias
conda create -n edna_env python=3.10 cutadapt vsearch swarm seqkit r-base -y

# 8. Activar el entorno para empezar a usarlo
conda activate edna_env

# 9. Comprobar que cutadapt y vsearch responden correctamente (tal como pide Cesc)
cutadapt --version
vsearch --version
