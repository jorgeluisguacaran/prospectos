class CreatePromedioMes < ActiveRecord::Migration[5.0]
  def change
    create_table :promedio_mes do |t|
      t.string :descripcion
      t.boolean :estatus

      t.timestamps
    end
  end
end
