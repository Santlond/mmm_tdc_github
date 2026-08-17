SELECT
  Fecha,
  (SELECT value.string_value FROM UNNEST(event_params) WHERE key = 'tipo_producto') AS tipo_producto,
  elemento,
  COUNT(*) AS Eventos,
  COUNT(DISTINCT user_id) AS Total_usuarios
FROM `bancolombia-app-personas-93e51.analytics_249643167.eventos_app_mi_bancolombia`
WHERE Fecha BETWEEN '2026-01-01' AND '2026-06-30'
  AND pantalla = 'home'
  AND seccion = 'home'
  AND flujo = 'preaprobados'
  AND elemento = 'ver preaprobado'
  AND LOWER((SELECT value.string_value FROM UNNEST(event_params) WHERE key = 'tipo_producto')) LIKE '%tarjeta de credito%'
GROUP BY 1, 2, 3
ORDER BY Fecha;