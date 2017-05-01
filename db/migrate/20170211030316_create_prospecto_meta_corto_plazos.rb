class CreateProspectoMetaCortoPlazos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_meta_corto_plazos do |t|
      t.references :prospecto, foreign_key: true
      t.string :meta_corta
      t.boolean :estatus

      t.timestamps
    end
  end
end
