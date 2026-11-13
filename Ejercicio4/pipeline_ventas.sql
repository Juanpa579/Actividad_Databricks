
-- EJERCICIO 4: PIPELINE DECLARATIVO
-- Ingeniería de Datos - Universidad EIA

-- Vista 1: limpiar los registros de ventas
CREATE OR REFRESH MATERIALIZED VIEW pipeline_ventas_limpias
AS
SELECT DISTINCT
    id_venta,
    fecha,
    producto,
    categoria,
    cantidad,
    precio_unitario,
    cantidad * precio_unitario AS total_venta
FROM workspace.ingenieria_datos_juanpa.ventas_bronze
WHERE producto IS NOT NULL
  AND TRIM(producto) <> ''
  AND cantidad > 0
  AND precio_unitario > 0;


-- Vista 2: resumir las ventas por categoría
CREATE OR REFRESH MATERIALIZED VIEW pipeline_ventas_por_categoria
AS
SELECT
    categoria,
    SUM(total_venta) AS total_vendido
FROM pipeline_ventas_limpias
GROUP BY categoria;
