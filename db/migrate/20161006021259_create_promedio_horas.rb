class CreatePromedioHoras < ActiveRecord::Migration[5.0]
  def change
    create_table :promedio_horas do |t|
      t.string :descripcion
      t.boolean :estatus

      t.timestamps
    end
  end
end
