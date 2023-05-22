# IntroPP2183076
## Desarrollo de Evaluación 1 C/C++ Procesamiento Memoria Compartida - Introducción a la programación paralela<br />
En esta valuación se busca evaluar nuestra capacidad para transformar códigos implementados en C / C ++ en su ejecución paralela utilizando OpenMP.
En este repositorio se encuentran los 6 archivos
* Código original en C ```trapezAreaSimple.C```
* Nuevo código en OpenMP llamado ```omp_trapezAreaSimple.c```
* Archivo ```sbatch``` para la corrida en GUANE-1.
* Archivo ```README``` donde se explica el funcionamiento del código, las opciones de compilación y ejecución, y cómo se ejecuta tanto en su máquina local como en GUANE-1.
* Archivo de salida llamado ```output_trapezAreaSimple.txt```
* El archivo ejecutable ```omp_trapezAreaSimple.exe```
<br />Se han documentado todas las variaciones que se realizaron en el código fuente en los comentarios del código.
En el ```README``` del repositorio ```OpenMP``` se encuentran en mayor detalle los pasos segidos.
## Desarrollo de Evaluación 2 C/C++ Procesamiento Memoria Distribuida

En esta evaluación se busca evaluar nuestra capacidad para implementar y ejecutar códigos en C/C++ utilizando el modelo de programación de memoria distribuida con MPI (Message Passing Interface). En este repositorio se encuentran los archivos relacionados a la evaluación:

1. Código fuente original en C: `trapezAreaSimple.C`
   - Este archivo contiene el código fuente original en C que se desea paralelizar utilizando MPI para el procesamiento distribuido.

2. Archivo MPI modificado: `mpi_trapezAreaSimple.c`
   - Se ha implementado una versión modificada del código original utilizando el modelo de programación de memoria distribuida con MPI. Este archivo contiene el código en C modificado para aprovechar el paralelismo distribuido y realizar cálculos en múltiples nodos o procesadores.

3. Archivo sbatch: `trapezAreaSimple-mpi.sbatch`
   - Se proporciona un archivo sbatch que se utiliza para la ejecución del programa en el sistema GUANE-1. Este archivo especifica los recursos necesarios y los comandos para compilar y ejecutar el código paralelo utilizando MPI.

4. Archivo README: `README.md`
   - Este archivo proporciona información detallada sobre el funcionamiento del código, las opciones de compilación y ejecución, y cómo se ejecuta tanto en su máquina local como en GUANE-1. Incluye una guía paso a paso para compilar y ejecutar el código paralelo utilizando MPI.

5. Archivo de salida: `output_trapezAreaSimple.txt`
   - Después de ejecutar el programa utilizando MPI, se genera un archivo de salida llamado `output_trapezAreaSimple.txt`. Este archivo contiene los resultados obtenidos e información relevante sobre la ejecución distribuida.

6. Archivo ejecutable: `mpi_trapezAreaSimple`
   - Después de compilar el código paralelo utilizando MPI, se genera un archivo ejecutable llamado `mpi_trapezAreaSimple`. Este archivo es el programa compilado que se puede ejecutar en su máquina local o en un entorno distribuido utilizando MPI.

En el repositorio se han incluido comentarios en el código fuente para explicar las modificaciones realizadas y el uso de funciones y directivas específicas de MPI. Además, el README proporciona instrucciones detalladas sobre cómo compilar y ejecutar el código tanto en su máquina local como en GUANE-1.
