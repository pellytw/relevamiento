class CreateEscuelas < ActiveRecord::Migration
  def change
    create_table :escuelas do |t|
      t.string :nro
      t.string :nombre
      t.string :localidad
      t.string :nivel
      t.string :region

      t.timestamps
    end
  end
end
