class CreateRelevamientos < ActiveRecord::Migration
  def change
    create_table :relevamientos do |t|
      t.string :nombre_y_apellido
      t.integer :tipo_de_documento_id
      t.integer :nro_documento
      t.integer :escuela_id
      t.integer :nivel_id
      t.integer :tipo_gestion_id
      t.integer :localidad_id
      t.string :calle
      t.integer :nro
      t.string :piso
      t.string :depto
      t.integer :grado_anio_alumno
      t.boolean :regular
      t.integer :cant_cuadras
      t.float :distancia_km
      t.string :servicio_transporte
      t.string :telefono_contacto
      t.string :rol
      t.boolean :activo_pasivo_docente
      t.boolean :frente_alumnos
      t.string :grado_docente
      t.string :turno_docente
      t.boolean :activo_pasivo_aux
      t.string :lugar_auxiliares

      t.timestamps
    end
  end
end
