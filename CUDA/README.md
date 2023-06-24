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
