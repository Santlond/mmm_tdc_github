WITH GA4 AS (
  SELECT
    PARSE_DATE('%Y%m%d', event_date) AS fecha,
    user_pseudo_id,
    (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_id') AS session_id,
    LOWER((SELECT value.string_value FROM UNNEST(event_params) WHERE key = 'page_location')) AS page_location
  FROM `bancolombia-bigquery.analytics_345222432.events_*` 
  WHERE _TABLE_SUFFIX BETWEEN '20260714' AND '20260715'
),

page AS (
  SELECT
    fecha,
    user_pseudo_id,
    session_id,
    CASE    
      WHEN page_location LIKE '%bancolombia.com/personas/productos/tarjetas-credito%' 
        OR page_location LIKE '%grupobancolombia.com/personas/productos/tarjetas-credito%' THEN 'Landing'
      WHEN page_location LIKE '%accesodigital.bancolombia.com/solicitud-de-producto/%' 
        OR  page_location LIKE '%accesodigital.grupobancolombia.com/solicitud-de-producto/%' THEN 'Motor - respuesta al frente'
      WHEN page_location LIKE '%tarjetasdecredito.bancolombia.com/oferta/solicita-tu-tarjeta%' 
        OR page_location LIKE '%tarjetasdecredito.grupobancolombia.com/oferta/solicita-tu-tarjeta%' THEN 'Landing conversión preaprobados'
      WHEN page_location LIKE '%accesodigital.bancolombia.com/ventas-digitales/preaprobado/tarjeta-de-credito%' 
        OR page_location LIKE '%accesodigital.grupobancolombia.com/ventas-digitales/preaprobado/tarjeta-de-credito%' THEN 'Experiencia preaprobados'
      WHEN page_location LIKE '%tarjetasdecredito.bancolombia.com/oferta/mastercard-unica-exclusiva%' 
        OR page_location LIKE '%tarjetasdecredito.grupobancolombia.com/oferta/mastercard-unica-exclusiva%' THEN 'Comportamental'
      ELSE 'Excluir'
    END AS dominio_seccion,
  FROM GA4
  WHERE page_location IS NOT NULL
)

SELECT 
  fecha,
  dominio_seccion AS Dominio,
  COUNT(DISTINCT CONCAT(user_pseudo_id, CAST(session_id AS STRING))) AS Sesiones,
  COUNT(DISTINCT user_pseudo_id) AS Usuarios
FROM page
WHERE dominio_seccion != 'Excluir' 
GROUP BY ALL
ORDER BY 1,3 desc;