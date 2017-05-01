class CreateProspectoOcupaciones < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_ocupaciones do |t|
      t.references :prospecto, foreign_key: true
      t.string :ocupacion
      t.boolean :estatus

      t.timestamps
    end
  end
end
