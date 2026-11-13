# Ingeniería de Datos – Databricks

## Ejercicio 3. Preguntas de investigación

### 1. ¿Qué es un Job en Databricks y para qué sirve?

Un **Job** permite automatizar la ejecución de procesos, como cargar datos o ejecutar notebooks, sin tener que hacer cada paso manualmente.

### 2. ¿Qué es una tarea y cómo se diferencia de un Job?

Una **tarea** es una acción específica, como ejecutar un notebook. Un **Job** reúne y organiza una o varias tareas.

### 3. ¿Qué significa establecer dependencias entre tareas?

Significa definir qué tareas deben terminar antes de que otras puedan comenzar. Por ejemplo, transformar las ventas solo si la carga terminó correctamente.

### 4. ¿Qué información del historial de ejecuciones permite identificar un fallo?

El historial muestra el estado de cada tarea, su duración y los mensajes de error. Con eso podemos identificar qué tarea falló y cuál fue la causa.

## Fuentes consultadas

- Databricks. *Configure and edit tasks*. https://docs.databricks.com/aws/en/jobs/configure-task
- Databricks. *Configure task dependencies*. https://docs.databricks.com/aws/en/jobs/run-if
- Databricks. *Monitor Lakeflow Jobs*. https://docs.databricks.com/aws/en/jobs/monitor
