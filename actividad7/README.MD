# CFS de Linux

En Linux, el CFS (Completely Fair Scheduler) se encarga de decidir a que tarea realizar primero, asignando tiempo de CPU a los procesos de forma justa y eficiente.

## ¿Cómo funciona el CFS?

### Prioridades con "nice":
A cada proceso se le asigna un valor de "nice" que define su prioridad. Cuanto menor sea el valor, más prioridad tendrá. Los valores van del -20 (alta prioridad) al 19 (baja prioridad). El valor por defecto es 0.

### Tiempo virtual ("vruntime"):
Se lleva un registro del tiempo que cada proceso ha estado ejecutándose. A este tiempo se le llama "vruntime". Los procesos con mayor "vruntime" tendrán menos prioridad para ser ejecutados.

### Selección del siguiente proceso:
El CFS elige el proceso con el menor "vruntime" para ser ejecutado. Si un proceso de mayor prioridad llega mientras otro está en ejecución, puede "preemprimirlo" y tomar su lugar.

### Reparto equitativo:
El objetivo principal del CFS es distribuir el tiempo de CPU de forma equitativa entre todos los procesos. Se asegura de que ningún proceso acapare toda la atención y deje a los demás sin recursos.

### Equilibrio entre CPUs:
El CFS también se encarga de distribuir la carga de trabajo entre los diferentes núcleos del CPU. De esta manera, se aprovecha al máximo la potencia de procesamiento del sistema.

### Sensible a la memoria:
El CFS tiene en cuenta la arquitectura del sistema para optimizar el balance de carga y minimizar la latencia de acceso a la memoria.

## En conclución:
- CFS es el planificador por defecto en Linux desde la versión 2.6.23.
- Se basa en la justicia y la equidad para distribuir el tiempo de CPU.
- Utiliza "nice", "vruntime" y la preemprición para gestionar las prioridades.
- Realiza un balance de carga entre CPUs y es sensible a la memoria.

En definitiva, el CFS CFS es un componente fundamental del sistema operativo Linux que se encarga de que todos los procesos tengan acceso a los recursos que necesitan.
