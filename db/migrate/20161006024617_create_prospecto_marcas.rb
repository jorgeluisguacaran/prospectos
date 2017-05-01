class CreateProspectoMarcas < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_marcas do |t|
      t.references :prospecto, foreign_key: true
      t.references :marca, foreign_key: true
      t.boolean :estatus

      t.timestamps
    end
  end
end
