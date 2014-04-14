class CreateNiveles < ActiveRecord::Migration
  def change
    create_table :niveles do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
