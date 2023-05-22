En el trabajo de OpenMP ya compilamos y ejecutamos el código original `trapezAreaSimple.c` y el modificado con OpenMP.</br>
En este caso, únicamente tenemos el código MPI, el cual se encuentra en este repositorio con el nombre `mpi_trapezAreaSimple.c`.</br>
Para compilarlo y ejecutarlo, seguimos los siguientes pasos:</br>
Una vez que hemos solicitado los recursos y nos encontramos en la carpeta asignada para trabajar, cargamos el módulo. Para eso, utilizamos el siguiente código: `module load devtools/mpi/mpich/3.3.1`. De esta manera, podemos compilar el programa.</br>
Una vez que tenemos el nuevo código `mpi_trapezAreaSimple.c`, para compilarlo utilizamos el siguiente código: `mpicc mpi_trapezAreaSimple.c -o mpi_trapezAreaSimple`.</br>
Para ejecutarlo, utilizamos el siguiente código: `mpirun -np 12 ./mpi_trapezAreaSimple`</br>
Para medir el tiempo de ejecución se utiliza `time mpirun -np 12 ./mpi_trapezAreaSimple`</br>
Con `time` obtenemos el tiempo de los tres códigos.
# Tiempo de ejecución de los tres códigos
## `trapezAreaSimple.c`
![Captura de pantalla 2023-05-22 083937](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/d2f147d9-cd31-4066-8b2e-9eeef69272be)</br>
## `omp_trapezAreaSimple.c`
![Captura de pantalla 2023-05-22 084026](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/588908f3-c8c9-4899-b227-affed63eb436)</br>
## `mpi_trapezAreaSimple.c`
![Captura de pantalla 2023-05-22 084233](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/057c4f9d-4486-409a-bc54-9cf5076a9aaa)</br>

# Comparativa de Eficiencia de Implementaciones

Se realizaron pruebas de tiempo de ejecución para las tres implementaciones diferentes: MPI, OpenMP y Normal. A continuación se presenta un resumen y una comparación de los resultados obtenidos.

## Resultados

### MPI

- Tiempo total de ejecución: 0m2.989s
- Tiempo de usuario: 0m0.013s
- Tiempo del sistema: 0m0.014s

### OMP

- Tiempo total de ejecución: 0m3.478s
- Tiempo de usuario: 0m0.003s
- Tiempo del sistema: 0m0.007s

### Normal

- Tiempo total de ejecución: 0m3.745s
- Tiempo de usuario: 0m0.000s
- Tiempo del sistema: 0m0.002s

## Comparativa

Basándonos en los resultados de tiempo de ejecución, se puede concluir lo siguiente:

- La implementación más rápida es MPI, con un tiempo total de ejecución de 2.989 segundos.
- La implementación de OMP tiene un tiempo total de ejecución de 3.478 segundos.
- La implementación normal tiene un tiempo total de ejecución de 3.745 segundos.

En términos de eficiencia, la implementación más eficiente es MPI, seguida de OMP y luego la implementación normal.
