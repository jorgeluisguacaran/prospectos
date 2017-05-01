class CreateTipoCorreos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_correos do |t|
      t.string :descripcion
      t.boolean :estatus

      t.timestamps
    end
  end
end
