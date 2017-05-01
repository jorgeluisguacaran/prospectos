class CreateSeguimientoMateriales < ActiveRecord::Migration[5.0]
  def change
    create_table :seguimiento_materiales do |t|
      t.string :descripcion
      t.boolean :estatus

      t.timestamps
    end
  end
end
