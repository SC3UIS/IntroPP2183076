
# Ejecución y Medición de Tiempo del Código MPI

En este repositorio se encuentran los archivos necesarios para compilar y ejecutar el código MPI (`mpi_trapezAreaSimple.c`). Además, se incluyen otros archivos relevantes como el archivo `trapezAreaSimple-mpi.sbatch`, el archivo de salida (`output_trapezAreaSimple.txt`), el código original (`trapezAreaSimple.C`) y el archivo ejecutable.

## Compilación y Ejecución

Los siguientes pasos sirven para compilar y ejecutar el código MPI:

1. Se solicitan los recursos necesarios y nos dirigimos a la carpeta asignada para trabajar.

2. Se carga el módulo requerido utilizando el siguiente comando: `module load devtools/mpi/mpich/3.3.1`. Esto cargará el módulo necesario para compilar el programa MPI.

3. Compilar el código `mpi_trapezAreaSimple.c` utilizando el siguiente comando: `mpicc mpi_trapezAreaSimple.c -o mpi_trapezAreaSimple`. Esto generará el archivo ejecutable `mpi_trapezAreaSimple`.

4. Ejecutar el programa MPI utilizando el siguiente comando: `mpirun -np 12 ./mpi_trapezAreaSimple`. Esto ejecutará el programa MPI con 12 procesos.

## Medición de Tiempo de Ejecución

Para medir el tiempo de ejecución del código MPI, utiliza el siguiente comando: `time mpirun -np 12 ./mpi_trapezAreaSimple`

Esto te proporcionará el tiempo de ejecución del programa MPI.

## Contenido del Repositorio

El repositorio contiene los siguientes archivos:

- `mpi_trapezAreaSimple.c`: El código fuente del programa MPI.
- `trapezAreaSimple-mpi.sbatch`: El archivo sbatch utilizado para solicitar recursos y ejecutar el programa MPI.
- `output_trapezAreaSimple.txt`: El archivo de salida que contiene los resultados de la ejecución del programa MPI.
- `trapezAreaSimple.C`: El código fuente del programa original sin modificaciones.
- `trapezAreaSimple-mpi.exe`: El archivo ejecutable del programa original.

# Tiempo de ejecución de los tres códigos
## `trapezAreaSimple.c`
![Captura de pantalla 2023-05-22 083937](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/d2f147d9-cd31-4066-8b2e-9eeef69272be)</br>
## `omp_trapezAreaSimple.c`
![Captura de pantalla 2023-05-22 084026](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/588908f3-c8c9-4899-b227-affed63eb436)</br>
## `mpi_trapezAreaSimple.c`
![Captura de pantalla 2023-05-22 084233](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/057c4f9d-4486-409a-bc54-9cf5076a9aaa)</br>

# Comparativa de Eficiencia de Implementaciones

## Resultados

### MPI

- Tiempo total de ejecución: 0m2.514s
- Tiempo de usuario: 0m25.108s
- Tiempo del sistema: 0m2.043s

### OMP

- Tiempo total de ejecución: 0m3.507s
- Tiempo de usuario: 0m0.010s
- Tiempo del sistema: 0m0.001s

### Normal

- Tiempo total de ejecución: 0m3.863s
- Tiempo de usuario: 0m0.000s
- Tiempo del sistema: 0m0.002s

## Comparativa

Basándonos en los resultados de tiempo de ejecución, se puede concluir lo siguiente:

- La implementación más rápida es MPI, con un tiempo total de ejecución de 2.514 segundos.
- La implementación de OMP tiene un tiempo total de ejecución de 3.507 segundos.
- La implementación normal tiene un tiempo total de ejecución de 3.863 segundos.

En términos de eficiencia relativa, la implementación más eficiente es MPI, seguida de OMP y luego la implementación normal.
