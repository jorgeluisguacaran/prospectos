class CreateSeguimientoRespuestas < ActiveRecord::Migration[5.0]
  def change
    create_table :seguimiento_respuestas do |t|
      t.string :descripcion
      t.boolean :estatus

      t.timestamps
    end
  end
end
