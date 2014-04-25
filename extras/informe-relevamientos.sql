use relevamiento;
SELECT nombre_y_apellido as "Nombre y Apellido", 
nro_documento as "Documento", 
e.nombre as "Establecimiento", 
n.nombre as "Nivel", 
tp.nombre as "Tipo de Gestión", 
l.nombre as "Localidad", 
CASE WHEN regular IS NULL THEN 'No' ELSE 'Si' END AS "Regular", 
CASE WHEN distancia_km IS NULL THEN 'No Ingreso' ELSE distancia_km END AS "Distancia en KM", servicio_transporte, rol  FROM relevamientos
JOIN escuelas e on (e.id = escuela_id)
JOIN niveles n on (n.id = nivel_id)
JOIN tipo_gestiones tp on (tp.id = tipo_gestion_id)
JOIN localidades l on (l.id = localidad_id)
ORDER BY nro_documento DESC;