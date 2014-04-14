class Relevamiento < ActiveRecord::Base
  attr_accessible :activo_pasivo_aux, :activo_pasivo_docente, :calle, :cant_cuadras, :depto, :distancia_km, :escuela_id, :frente_alumnos, :grado_anio_alumno, :grado_docente, :localidad_id, :lugar_auxiliares, :nivel_id, :nombre_y_apellido, :nro, :nro_documento, :piso, :regular, :rol, :servicio_transporte, :telefono_contacto, :tipo_de_documento_id, :tipo_gestion_id, :turno_docente

  belongs_to :tipo_de_documento
  belongs_to :escuela
  belongs_to :nivel
  belongs_to :tipo_gestion
  belongs_to :localidad

end
