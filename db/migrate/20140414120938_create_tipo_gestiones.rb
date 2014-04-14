class CreateTipoGestiones < ActiveRecord::Migration
  def change
    create_table :tipo_gestiones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
