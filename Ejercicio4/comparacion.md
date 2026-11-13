# Ejercicio 4 — Comparación de resultados del pipeline

Para comprobar que el pipeline actualiza los resultados, primero se ejecutó utilizando la tabla `ventas_bronze`. Luego se agregó una venta válida de **2 resmas de papel**, por **$100.000** cada una, en la categoría **Papelería**. Después se volvió a ejecutar el pipeline, sin ejecutar nuevamente el notebook de carga.

## Resultados antes y después

| Categoría | Antes (COP) | Después (COP) | Diferencia (COP) |
|---|---:|---:|---:|
| Accesorios | $1.125.000 | $1.125.000 | $0 |
| Hogar | $1.910.000 | $1.910.000 | $0 |
| Papelería | $254.000 | $454.000 | +$200.000 |
| Tecnología | $8.205.000 | $8.205.000 | $0 |
| **Total** | **$11.494.000** | **$11.694.000** | **+$200.000** |

Las ventas limpias pasaron de **15 a 16 registros**. El total vendido aumentó **$200.000**, exactamente el valor de la nueva venta (`2 × $100.000`). Solo cambió Papelería, porque la venta agregada pertenece a esa categoría.

## Conclusión

El resultado coincide con lo esperado. Al ejecutar nuevamente el pipeline, Databricks actualizó las vistas materializadas `pipeline_ventas_limpias` y `pipeline_ventas_por_categoria` a partir de los datos de `ventas_bronze`, sin necesidad de repetir el notebook de carga.
