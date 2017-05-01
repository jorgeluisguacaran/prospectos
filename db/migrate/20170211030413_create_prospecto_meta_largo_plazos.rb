class CreateProspectoMetaLargoPlazos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_meta_largo_plazos do |t|
      t.references :prospecto, foreign_key: true
      t.string :meta_larga
      t.boolean :estatus

      t.timestamps
    end
  end
end
