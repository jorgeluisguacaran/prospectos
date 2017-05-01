class CreateProspectoTelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_telefonos do |t|
      t.references :prospecto, foreign_key: true
      t.integer :telefono
      t.references :tipo_telefono, foreign_key: true
      t.boolean :estatus

      t.timestamps
    end
  end
end
