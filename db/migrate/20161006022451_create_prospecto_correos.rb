class CreateProspectoCorreos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_correos do |t|
      t.references :prospecto, foreign_key: true
      t.string :correo
      t.references :tipo_correo, foreign_key: true
      t.boolean :estatus

      t.timestamps
    end
  end
end
