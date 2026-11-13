# Ingeniería de Datos – Databricks

## Ejercicio 1. Preguntas de investigación

### 1. ¿Qué es Unity Catalog en Databricks?

Unity Catalog es una herramienta de Databricks que permite organizar y administrar los datos en catálogos, esquemas y tablas. También ayuda a controlar quién puede acceder a ellos y facilita encontrarlos y utilizarlos desde diferentes notebooks.

### 2. ¿Qué diferencia hay entre un DataFrame de Spark y una tabla Delta?

Un **DataFrame de Spark** es una estructura de datos con filas y columnas que se utiliza para consultar y transformar información. Una **tabla Delta** almacena los datos de forma persistente y permite consultarlos después, además de ofrecer control de transacciones e historial de cambios.

En nuestro ejercicio, primero creamos las ventas en un DataFrame y luego las guardamos en la tabla Delta `ventas_bronze`.

## Fuentes consultadas

- Databricks. *What is Unity Catalog?* https://docs.databricks.com/aws/en/data-governance/unity-catalog
- Databricks. *What is Delta Lake in Databricks?* https://docs.databricks.com/aws/en/delta
