class CreateProspectos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospectos do |t|
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :cedula
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :donde_se_conocio
      t.string :google_plus
      t.string :buena_referencia
      t.boolean :llamar_en_seis_meses

      t.timestamps
    end
  end
end
