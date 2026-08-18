# Introducción 
Se usa la metodología marketing mix modeling [MMM] para medir el impacto, y conocer la contribución, de mercadeo en el número de tarjetas vendidas por el canal digital [kpi].

Para desarrollar el proyecto, y debido a que es el primer MMM, se estableció un periodo de 6 sprints [1 sprint = 15 días] que comprende desde el paso inicial [definición de caso de negocio y variables] hasta el paso final [entrega de resultados].

El lider del proyecto es Santiago Humberto Londoño Restrepo [científico de datos]. 

El analytics translator, quien sirve de apoyo, de ventas digitales es Yessikaterine Uribe Arias

Cliente interno del proyecto es el equipo ventas digitales específicamente el área de tarjetas de crédito liderado por Esteban Uribe Zapata

A hoy [20260816] el proyecto se encuentra en el paso de recolección de variables. El rango de tiempo solicitado para cada variable fue 20240101 hasta 20260630.

A hoy [20260816] no se ha iniciado proceso de actualización de variables.


# 🛠️ Recolección de datos

Las variables sobre las que se inició el proceso de recolección de datos fueron identificadas previamente en un ejercicio de definición de variables que arrojó como resultado un directed acyclic graph [DAG], dónde se propone las variables que potencialmente impactarían el kpi, para verlo ir a [presentación definición de variables mmm tdc](https://bancolombia.sharepoint.com/:p:/r/teams/EEIngenierayCiencia/Documentos%20compartidos/Ciencia%20de%20Datos/Atribuci%C3%B3n/Ventas%20Digitales/MMM%20TDC/Definicion_variables_tdc.pptx?d=wbba71f11229c4b2aadfdeaad2435a8ad&csf=1&web=1&e=KYwayd).

Para observar el estado del proceso de recolección de datos de cada una de las variables ir a [estado recolección de datos](https://bancolombia.sharepoint.com/:x:/r/teams/EEIngenierayCiencia/Documentos%20compartidos/Ciencia%20de%20Datos/Atribuci%C3%B3n/Ventas%20Digitales/MMM%20TDC/Estado%20recoleccio%CC%81n%20de%20datos.xlsx?d=w8b82c9e53888409693ed9d3b1126734d&csf=1&web=1&e=JhPrfa). El proceso se encuentra en un **50%** de avance.

Para observar las variables recolectados ir a [datos](https://bancolombia.sharepoint.com/:f:/r/teams/EEIngenierayCiencia/Documentos%20compartidos/Ciencia%20de%20Datos/Atribuci%C3%B3n/Ventas%20Digitales/MMM%20TDC/Datos?d=w531659e18b2c41e382ec817128bbec60&csf=1&web=1&e=em9IqN).

# 🚪 Datos responsabilidad de analítica

A continuación se muestran los código sql/python/jupyter [*los encuentra en este repositorio*] que permiten obtener las variables que son responsabilidad del equipo de analítica:

- Número de tarjetas vendidas por el canal digital [fuente: lz]
  - obtener_kpi_ventas_tdc.ipynb
- Número de errores bloqueantes en la experiencia digital de tdc [fuente: lz]
  - obtener_num_errores_bloqueantes_experiencia_digital_tdc.ipynb
- Tráfico en experiencia digital tdc: landing conversion, experiencia y motor [fuente: bigquery][Sql creado y ejecutado por equipo ingeniería de datos - Alejandro Ramirez Rios]
  - obtener_trafico_experiencia_digital_tdc.sql
- Número de clics banner preaprobados en el canal app personas [fuente: bigquery]
  - obtener_clics_banner_preaprobados_app.sql
- Número de clics banner preaprobados en el canal svp personas [fuente: GA4 - Se descarga directamente]
- Inversión online y offline competencia en mercadeo para impulsar sus tdc [fuente: OMD. Equipo Media team tiene el acceso - Jose Miguel Lesmes Cubides]
  - El archivo se encuentra en la carpeta [datos](https://bancolombia.sharepoint.com/:f:/r/teams/EEIngenierayCiencia/Documentos%20compartidos/Ciencia%20de%20Datos/Atribuci%C3%B3n/Ventas%20Digitales/MMM%20TDC/Datos?d=w531659e18b2c41e382ec817128bbec60&csf=1&web=1&e=em9IqN)
- Variables macroeconómicas: Tasa de inflación, tasa de desempleo, salario mínimo, PIB, tasa de interés de política monetaria [fuente: banco de la república]
  - El archivo se encuentra en la carpeta [datos](https://bancolombia.sharepoint.com/:f:/r/teams/EEIngenierayCiencia/Documentos%20compartidos/Ciencia%20de%20Datos/Atribuci%C3%B3n/Ventas%20Digitales/MMM%20TDC/Datos?d=w531659e18b2c41e382ec817128bbec60&csf=1&web=1&e=em9IqN)
- Cuota de manejo [fuente: pendiente]
  - Pendiente
- Tasa de interés de la tdc [fuente: pendiente]
  - Pendiente
- Fallas tecnológicas canales APP y SVP personas [fuente: lz]
  - Pendientes
- Clics banners tdc en tu360 compras [fuente: bigquery]
  - Pendiente

# 🛸 Contribuidores
- [Santiago Humberto Londoño Restrepo](https://github.com/shlondon/)