# TFM: Análisis bioinformático de ADN ambiental (eDNA) – Marcador 12S

Este repositorio contiene los scripts y la documentación del flujo de trabajo (*pipeline*) bioinformático para el análisis de metabarcoding de ADN ambiental (eDNA) enfocado a la identificación de comunidades de peces mediante el marcador mitocondrial **12S rRNA**.

## Estructura del repositorio

* `scripts/`: Scripts documentados paso a paso de cada etapa del análisis.
* `data/`: Carpeta local para los datos crudos (`.fastq.gz`) y archivos intermedios *(excluida del control de versiones mediante `.gitignore`)*.

## Etapas del proyecto

1. **Preparación del entorno (`scripts/01_instalacion_y_entorno.sh`)** ✅
   * Configuración de Ubuntu en WSL2 y gestor de paquetes Miniforge/Conda.
   * Creación del entorno `edna_env` con `cutadapt`, `vsearch`, `swarm`, `seqkit` y `R`.
2. **Exploración inicial y control de calidad de los datos** 🔄 *(En curso)*
   * Inspección de la estructura de los *reads* FASTQ (primers, barcode, adaptadores).
   * Revisión de informes de calidad (`MultiQC`) y estadísticas de secuenciación (`seqkit stats`).
3. **Recorte de primers y filtrado de calidad** ⏳
   * Eliminación de primers y adaptadores con `cutadapt`.
4. **Fusión de pares (*merging*), dereplicación y *clustering*** ⏳
   * Ensamblaje de lecturas R1/R2 y agrupación de MOTUs/ASVs con `vsearch` y `swarm`.
5. **Asignación taxonómica y análisis ecológico en R** ⏳
   * Clasificación frente a bases de datos de referencia 12S, filtrado de controles negativos (blancos) y análisis de biodiversidad.
