En el trabajo de OpenMP ya compilamos y ejecutamos el código original `trapezAreaSimple.c` y el modificado con OpenMP. En este caso, únicamente tenemos el código MPI, el cual se encuentra en este repositorio con el nombre `mpi_trapezAreaSimple.c`.
Para compilarlo y ejecutarlo, seguimos los siguientes pasos:
Una vez que hemos solicitado los recursos y nos encontramos en la carpeta asignada para trabajar, cargamos el módulo. Para eso, utilizamos el siguiente código: `module load devtools/mpi/mpich/3.3.1`. De esta manera, podemos compilar el programa.
Una vez que tenemos el nuevo código `mpi_trapezAreaSimple.c`, para compilarlo utilizamos el siguiente código: `mpicc mpi_trapezAreaSimple.c -o mpi_trapezAreaSimple`.
Para ejecutarlo, utilizamos el siguiente código: `mpirun -np 12 ./mpi_trapezAreaSimple`.
![Captura de pantalla 2023-05-16 224746](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/2c6642fb-5509-4202-a984-e63fe364f9d2)</br>
![Captura de pantalla 2023-05-16 224918](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/c0078b0b-1c69-46ed-93a4-00c96165717c)</br>
![Captura de pantalla 2023-05-16 232318](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/8fbeda96-d495-47b1-b6bb-28aeed9de43f)

</br>
Según estos resultados, podemos observar que la versión MPI tiene el tiempo de ejecución más bajo con 3.805 segundos, seguida de cerca por la versión OMP con 5.415 segundos. La versión normal, sin paralelización, tiene el tiempo de ejecución más alto con 6.444 segundos.
</br>
Esto indica que tanto la versión MPI como la versión OMP logran mejorar el rendimiento en comparación con la versión normal. Sin embargo, la versión MPI parece ser la más eficiente en términos de tiempo de ejecución en este caso particular.
