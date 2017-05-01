class CreateProspectoReferidos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_referidos do |t|
      t.references :prospecto, foreign_key: true
      t.string :nombre_referido
      t.string :ocupacion_referido
      t.integer :telefono_referido

      t.timestamps
    end
  end
end
