class CreateProspectoMetaMedianoPlazos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_meta_mediano_plazos do |t|
      t.references :prospecto, foreign_key: true
      t.string :meta_mediana
      t.boolean :estatus

      t.timestamps
    end
  end
end
