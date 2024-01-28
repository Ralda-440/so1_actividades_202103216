# Tipos de Kernel

## Kernel Monolítico

### Estructura y funcionamiento:

- Un único módulo: Todos los componentes del sistema operativo residen en un solo módulo grande en el espacio del núcleo.
- Acceso completo: Los componentes del kernel tienen acceso directo al hardware y a las estructuras de datos del sistema.
- Modo supervisor: Se ejecuta en modo supervisor con privilegios para controlar otros programas.
- Subsistemas: Organizado en subsistemas (memoria, procesos, dispositivos) que interactúan para brindar funcionalidades.

### Ventajas:

- Alto rendimiento: Comunicación directa y acceso privilegiado al hardware.
- Código compacto y eficiente: Un solo módulo reduce complejidad.
- Fácil de depurar: Estructura simple facilita la identificación de problemas.

### Desventajas:

- Tamaño grande y complejo: Aumenta la complejidad y dificulta el mantenimiento.
- Menos seguro: Errores en un componente pueden afectar la estabilidad del sistema.
- Menos modular: Falta de separación clara entre funciones del kernel y aplicaciones.

## MicroKernel

### Estructura y funcionamiento:

- Un pequeño núcleo: Proporciona funciones básicas; funciones complejas en módulos separados.
- Comunicación entre módulos: A través de llamadas al sistema o mecanismos de comunicación.

### Ventajas:

- Mayor seguridad: Separación reduce riesgos.
- Fácil mantenimiento y actualización: Estructura modular facilita correcciones y adiciones.
- Más flexible y portable: Separación permite flexibilidad y portabilidad.

### Desventajas:

- Menor rendimiento: Comunicación entre módulos puede generar sobrecarga.
- Código más complejo: Modularización aumenta complejidad.

## Kernel Híbrido

### Estructura y funcionamiento:

- Núcleo monolítico con subsistemas.
- Módulos adicionales en espacio de usuario.
- Comunicación flexible entre núcleo y módulos.

### Ventajas:

- Rendimiento equilibrado.
- Mayor seguridad y fiabilidad.
- Flexibilidad: Permite carga y descarga dinámica de módulos.

### Desventajas:

- Más complejo que el monolítico.
- Potencialmente menos eficiente.
- Dependencia de interfaces bien definidas.

# Modo Usuario vs Modo Kernel

## Modo usuario

- Aplicaciones y programas de nivel de usuario operan en este modo.
- Acceso limitado a recursos del sistema.
- Más seguro y menos propenso a bloqueos del sistema.

## Modo kernel

- Kernel y componentes centrales operan en modo privilegiado.
- Acceso irrestricto a todos los recursos del sistema.
- Ejecuta tareas críticas.
- Cambio entre modos mediante llamadas al sistema o interrupciones.

# Interruptions vs Traps

## Interruptions

- Fuente: Dispositivos de hardware o eventos externos.
- Activación: Asincrónica.
- Propósito: Informar a la CPU sobre eventos urgentes.
- Manejo: CPU suspende programa, ejecuta rutina de manejador de interrupciones.
- Ejemplos: Pulsaciones de teclas, actividad de red, finalización de E/S de disco.

## Traps

- Fuente: Instrucciones de software ejecutadas por el programa.
- Activación: Sincrónica.
- Propósito: Notificar al sistema operativo sobre condiciones excepcionales.
- Manejo: CPU cambia a rutina de manejador de trampas definida por el kernel.
- Ejemplos: Acceso a memoria inválido, división por cero, llamadas al sistema.
