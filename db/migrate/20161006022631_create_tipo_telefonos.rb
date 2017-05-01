class CreateTipoTelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_telefonos do |t|
      t.string :descripcion
      t.boolean :estatus

      t.timestamps
    end
  end
end
