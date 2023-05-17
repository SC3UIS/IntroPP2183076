En el trabajo de OpenMP ya compilamos y ejecutamos el código original `trapezAreaSimple.c` y el modificado con OpenMP. En este caso, únicamente tenemos el código MPI, el cual se encuentra en este repositorio con el nombre `mpi_trapezAreaSimple.c`.
Para compilarlo y ejecutarlo, seguimos los siguientes pasos:</br>
Una vez que hemos solicitado los recursos y nos encontramos en la carpeta asignada para trabajar, cargamos el módulo. Para eso, utilizamos el siguiente código: `module load devtools/mpi/mpich/3.3.1`. De esta manera, podemos compilar el programa.</br>
Una vez que tenemos el nuevo código `mpi_trapezAreaSimple.c`, para compilarlo utilizamos el siguiente código: `mpicc mpi_trapezAreaSimple.c -o mpi_trapezAreaSimple`.</br>
Para ejecutarlo, utilizamos el siguiente código: `mpirun -np 12 ./mpi_trapezAreaSimple`.</br>
Para medir el tiempo de ejecución se utiliza `time mpirun -np 12 ./mpi_trapezAreaSimple`</br>
Con `time` obtenes el tiempo de los tres códigos.
# Tiempo de ejecución de los tres códigos
## `trapezAreaSimple.c`
![Captura de pantalla 2023-05-16 224746](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/2c6642fb-5509-4202-a984-e63fe364f9d2)</br>
## `omp_trapezAreaSimple.c`
![Captura de pantalla 2023-05-16 224918](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/c0078b0b-1c69-46ed-93a4-00c96165717c)</br>
## `mpi_trapezAreaSimple.c`
![Captura de pantalla 2023-05-16 232318](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/8fbeda96-d495-47b1-b6bb-28aeed9de43f)

</br>

- Código normal:
  - Real: 0m5.082s
  - User: 0m0.002s
  - Sys: 0m0.000s

- Código con MPI:
  - Real: 0m5.097s
  - User: 0m0.015s
  - Sys: 0m0.017s

- Código con OpenMP:
  - Real: 0m5.105s
  - User: 0m0.124s
  - Sys: 0m0.004s


- En términos de tiempo "real", que indica la duración total de la ejecución del programa, los tres códigos tienen tiempos muy similares, alrededor de 5.1 segundos.

- El tiempo "user" representa el tiempo de CPU utilizado por el usuario, mientras que el tiempo "sys" representa el tiempo de CPU utilizado por el sistema operativo. En estos tiempos, es importante observar la diferencia entre los códigos.

  - El código normal muestra un tiempo "user" de 0.002 segundos y un tiempo "sys" de 0.000 segundos. Estos tiempos son muy bajos, lo que indica que el cálculo se realizó rápidamente y con una utilización mínima de la CPU.

  - El código con MPI muestra un tiempo "user" de 0.015 segundos y un tiempo "sys" de 0.017 segundos. Estos tiempos son ligeramente más altos que los del código normal. La comunicación y sincronización entre los procesos MPI pueden haber contribuido a estos tiempos adicionales.

  - El código con OpenMP muestra un tiempo "user" de 0.124 segundos y un tiempo "sys" de 0.004 segundos. Estos tiempos son más altos que los de los otros dos códigos. La paralelización con OpenMP implica la creación y administración de múltiples hilos, lo que puede requerir más tiempo de CPU.

En términos de tiempo "user", el código normal tiene el tiempo más bajo, seguido por el código con MPI y luego el código con OpenMP. Sin embargo, en términos de tiempo "sys", el código con MPI tiene el tiempo más alto, seguido por el código con OpenMP y luego el código normal.

En general, los tiempos de ejecución son muy similares entre los tres códigos, con diferencias mínimas. La elección entre MPI y OpenMP dependerá de otros factores, como la naturaleza del problema y las características del entorno de ejecución.
