# Ejercicio 3 — Explicación del error controlado

## ¿Qué error se introdujo?

En el notebook `01_cargar_ventas` se agregó una consulta a una columna que no existe en el DataFrame:

```python
df_ventas.select("columna_inexistente").show()
```

Como la columna `columna_inexistente` no forma parte de los datos, Spark no puede realizar la consulta y genera un error de análisis (`AnalysisException`).

## ¿Qué ocurrió con las tareas?

La primera tarea, `cargar_ventas`, falló por la referencia a la columna inexistente. La segunda tarea, `transformar_ventas`, no se ejecutó porque estaba configurada para comenzar solamente si la primera terminaba correctamente.

## ¿Cómo se identificó el fallo?

En el historial de ejecuciones del Job se observó el estado fallido de `cargar_ventas`. Al abrir los detalles de esa tarea, el mensaje de error permitió identificar la columna inexistente como la causa del problema.

## ¿Cómo se solucionó?

Se eliminó la línea que consultaba `columna_inexistente` y se ejecutó de nuevo el Job. Con el código corregido, ambas tareas pudieron completarse correctamente.

## Conclusión

Esta prueba permitió comprobar que las dependencias entre tareas funcionan: si falla la carga, Databricks evita ejecutar la transformación de los datos.

> **Nota:** Esta explicación corresponde al error controlado propuesto en la actividad. Si en tu historial aparece otro mensaje o estado, adapta la descripción a lo que muestran tus capturas.
