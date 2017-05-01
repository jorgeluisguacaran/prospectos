class CreateProspectoUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_usuarios do |t|
      t.references :prospecto, foreign_key: true
      t.references :usuario, foreign_key: true
      t.boolean :estatus

      t.timestamps
    end
  end
end
