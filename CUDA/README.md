# Integrantes del Equipo

- Julian Esteban Garcia Duarte - 2180025
- Jeicob Gilmar Restrepo Gómez - 2183076
- Sebastián David Mendoza Alvarado -2191969

# trapezAreaSimple

## Descripción del Proceso de Ejecución con CUDA para `trapezAreaSimple`

A continuación se describe el proceso paso a paso para ejecutar el código paralelizado con CUDA utilizando el archivo "CUDA_trapezAreaSimple.cu":

1. Cargar el módulo CUDA:
   - El proceso comienza cargando el módulo "devtools/cuda/8.0" para asegurar que las herramientas de desarrollo y la versión adecuada de CUDA estén disponibles en el entorno de ejecución.

2. Solicitar recursos de la GPU:
   - Se utiliza el comando `srun` para solicitar recursos de la GPU y obtener acceso a una máquina que tenga una GPU disponible. La opción `--gres=gpu` se utiliza para especificar que solo se requiere una GPU para la ejecución.
     
3. Iniciar una sesión interactiva:
   - El parámetro `--pty` se utiliza con el comando `srun` para iniciar una sesión interactiva en la máquina asignada. Esto permite ejecutar comandos en un entorno interactivo dentro de la GPU asignada.

4. Compilar el código CUDA:
   - Se utiliza el compilador `nvcc` (NVIDIA CUDA Compiler) para compilar el archivo "CUDA_trapezAreaSimple.cu". El comando de compilación utilizado es `nvcc CUDA_trapezAreaSimple.cu -o CUDA_trapezAreaSimple`, donde se especifica el nombre de salida del ejecutable como "CUDA_trapezAreaSimple".

5. Ejecutar el programa:
   - Finalmente, se ejecuta el programa utilizando el comando `./CUDA_trapezAreaSimple`. Esto inicia la ejecución del código paralelizado con CUDA y muestra los resultados en la salida estándar.

## Ejecución

A continuación se presentan los pantallazos de las ejecuciones de cada una de las implementaciones:

### CUDA

![CUDA](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/e93817cd-7380-432d-8bfd-0c7c4dfe1e4e)

### OpenMP

![OMP](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/fa449955-41aa-4240-862e-a0f617f99820)

### MPI

![MPI](https://github.com/SC3UIS/IntroPP2183076/assets/82180254/8e4f393f-b259-4895-a63e-feeca4639150)


# Análisis y Conclusiones

Los resultados obtenidos de las implementaciones CUDA, OpenMP y MPI del algoritmo de integración numérica son los siguientes:

## CUDA:
- Número de subintervalos: 1000
- Límite inicial: 3
- Límite final: 8
- Valor de la integral: 161.666687
- Tiempo transcurrido: 0.011224 segundos
- Speedup: 14403.62
- Escalabilidad: 14.07
- Rendimiento computacional: 89005.45 FLOPS

## OpenMP:
- Número de subintervalos: 1000
- Límite inicial: 3
- Límite final: 8
- Valor de la integral: 161.666688
- Tiempo transcurrido: 0.000527 segundos
- Speedup: 1.66
- Escalabilidad: 0.10
- Rendimiento computacional: 7590132.83 FLOPS/sec

## MPI:
- Número de subintervalos: 1000
- Límite inicial: 3
- Límite final: 8
- Valor de la integral: 161.666688
- Tiempo transcurrido: 0.000318 segundos
- Speedup: 509068.49
- Escalabilidad: 42422.37
- Rendimiento computacional: 12595507.51 FLOPS/sec

A partir de los resultados, se pueden observar las siguientes conclusiones:

1. Comparación de rendimiento:
   - La implementación CUDA logró el mayor rendimiento computacional con 89005.45 FLOPS.
   - La implementación OpenMP logró un rendimiento computacional de 7590132.83 FLOPS/sec.
   - La implementación MPI logró el mayor rendimiento computacional con 12595507.51 FLOPS/sec.

2. Speedup y escalabilidad:
   - La implementación CUDA logró un speedup significativamente mayor de 14403.62 en comparación con la ejecución secuencial.
   - La implementación OpenMP logró un speedup moderado de 1.66.
   - La implementación MPI logró un speedup excepcionalmente alto de 509068.49.
   - La escalabilidad fue relativamente baja para la implementación OpenMP (0.10) y moderadamente baja para la implementación CUDA (14.07). Sin embargo, la implementación MPI demostró una excelente escalabilidad (42422.37), lo que indica su capacidad para utilizar de manera eficiente un gran número de unidades de procesamiento.

3. Tiempo transcurrido:
   - La implementación CUDA tardó 0.011224 segundos, lo que indica su eficiencia en utilizar la GPU para cálculos paralelos.
   - La implementación OpenMP tardó 0.000527 segundos, demostrando su alta eficiencia en utilizar múltiples hilos para cálculos paralelos.
   - La implementación MPI tardó 0.000318 segundos, mostrando su distribución eficiente de tareas entre varios procesos.

En general, la implementación CUDA superó a las implementaciones OpenMP y MPI en términos de rendimiento computacional y logró un speedup significativo. Sin embargo, la implementación MPI demostró el mayor speedup y escalabilidad, lo que la convierte en una excelente opción para cálculos paralelos a gran escala. La implementación OpenMP mostró un speedup y escalabilidad moderados, lo que indica su eficacia para paralelizar cálculos en un sistema de memoria compartida.

# summaSimple

Para esta parte del taller se vario la cantidad de numeros sobre los cuales calcular la suma desde 1 hasta 1000 incrementando en cada iteracion un orden de magnitud. Todos los experimentos se corrieron en el cluster de Guane.
```
Comparacion para n = 0
Resultado Cuda = 1
Resultado Secu = 1
Tiempo Cuda (milisegundos)       = 0.787648
Tiempo Secuencial (milisegundos) = 0.004768
Speedup: 0.01
Escalabilidad: 0.00
Performance: 0.00 FLOPS


Comparacion para n = 1
Resultado Cuda = 55
Resultado Secu = 55
Tiempo Cuda (milisegundos)       = 0.698688
Tiempo Secuencial (milisegundos) = 0.004768
Speedup: 0.01
Escalabilidad: 0.00
Performance: 0.00 FLOPS


Comparacion para n = 10
Resultado Cuda = 5050
Resultado Secu = 5050
Tiempo Cuda (milisegundos)       = 0.705984
Tiempo Secuencial (milisegundos) = 0.004768
Speedup: 0.01
Escalabilidad: 0.00
Performance: 0.00 FLOPS


Comparacion para n = 100
Resultado Cuda = 500500
Resultado Secu = 500500
Tiempo Cuda (milisegundos)       = 0.753280
Tiempo Secuencial (milisegundos) = 0.004832
Speedup: 0.01
Escalabilidad: 0.00
Performance: 0.00 FLOPS


Comparacion para n = 1000
Resultado Cuda = 50005000
Resultado Secu = 50005000
Tiempo Cuda (milisegundos)       = 0.861888
Tiempo Secuencial (milisegundos) = 0.026816
Speedup: 0.03
Escalabilidad: 0.00
Performance: 0.01 FLOPS

```
Los resultados comparan diferentes ejecuciones para un valor creciente de n utilizando el código proporcionado. Basándonos en la información proporcionada, se pueden obtener las siguientes conclusiones:

En la comparación de resultados, los valores obtenidos de la implementación en CUDA y la implementación secuencial (Resultado Cuda y Resultado Secu, respectivamente) son consistentes y coinciden para cada valor de n probado, lo que indica que ambas implementaciones producen la suma correcta.

En cuanto al tiempo transcurrido, se observa que la implementación en CUDA (Tiempo Cuda) requiere más tiempo de ejecución en comparación con la implementación secuencial (Tiempo Secuencial) para todos los valores de n probados. Probablemente debido a el tiempo que conlleva ubicar los datos en memoria para su ejecucion y recuperacion de resultados.

El speedup, que mide la mejora de rendimiento lograda mediante la implementación en CUDA en comparación con la implementación secuencial, muestra valores consistentemente alrededor de 0.01, lo cual indica que la implementación en CUDA no proporciona una mejora significativa de rendimiento.

La escalabilidad, que mide la capacidad del código para utilizar de manera eficiente recursos adicionales a medida que aumenta el tamaño del problema, muestra valores de 0.00, sugiriendo que el código no exhibe escalabilidad a medida que aumenta el valor de n.

En términos de rendimiento, calculado en FLOPS (operaciones de punto flotante por segundo), los valores son consistentemente alrededor de 0.00 FLOPS, lo que indica una baja eficiencia computacional para ambas implementaciones.

En resumen, los resultados sugieren que la implementación en CUDA no ofrece una mejora significativa de rendimiento en comparación con la implementación secuencial para los valores de n probados. Es posible que los costos asociados con la transferencia de datos y la invocación del kernel en la implementación en CUDA superen los beneficios de la paralelización para tamaños de problemas pequeños. Sin embargo, se requiere un análisis y experimentación adicionales con tamaños de problemas más grandes para obtener conclusiones más definitivas.
