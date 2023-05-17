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

En términos de los tiempos "real" (real), que reflejan la duración total de la ejecución del programa, podemos observar que los tres códigos tienen tiempos de ejecución similares, con diferencias mínimas entre ellos.

Sin embargo, en los tiempos "user" (usuario) y "sys" (sistema), que indican el tiempo de CPU utilizado por el usuario y el sistema operativo, podemos observar algunas diferencias:

- El código normal tiene tiempos "user" y "sys" muy bajos, lo que indica que el tiempo de CPU utilizado es mínimo. Esto puede ser debido a la falta de paralelización y el uso de un solo hilo de ejecución.

- El código con MPI muestra tiempos "user" y "sys" ligeramente más altos que el código normal. Esto se debe al overhead adicional de la comunicación y sincronización entre los procesos MPI.

- El código con OpenMP muestra un tiempo "user" más alto en comparación con los otros dos códigos. Esto es esperado ya que OpenMP utiliza múltiples hilos para paralelizar el cálculo, lo que implica una mayor carga en la CPU para administrar los hilos.

En resumen, en términos de tiempo de ejecución total (real), los tres códigos tienen un rendimiento similar. Sin embargo, en términos de tiempo de CPU utilizado (user y sys), el código normal tiene el menor tiempo, seguido por el código con MPI y luego el código con OpenMP.
