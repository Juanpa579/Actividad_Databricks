# Ejercicio 4 — Preguntas de investigación

### ¿Qué es un pipeline de datos y cuáles son sus etapas habituales?

Es un proceso que mueve y prepara datos para poder utilizarlos. Normalmente incluye la **extracción o lectura**, la **limpieza y transformación**, y el **almacenamiento de los resultados**.

### ¿Qué significa que un pipeline sea declarativo?

Significa que definimos **qué resultados queremos obtener**, y Databricks se encarga de organizar las dependencias y el orden de ejecución, sin que tengamos que programar cada paso manualmente.

### ¿En qué se diferencian un Job que ejecuta notebooks y un pipeline declarativo que define conjuntos de datos?

En un **Job** configuramos las tareas y sus dependencias para ejecutar notebooks en cierto orden. En un **pipeline declarativo** definimos las tablas o vistas que queremos crear, y Databricks identifica las dependencias entre ellas y administra su actualización.

## Fuentes

- [Databricks — What are pipelines?](https://docs.databricks.com/aws/en/ldp/concepts/pipelines)
- [Databricks — Apache Spark Declarative Pipelines](https://docs.databricks.com/aws/en/ldp/concepts/spark-declarative-pipelines)
- [Databricks — Lakeflow Jobs](https://docs.databricks.com/aws/en/jobs)
