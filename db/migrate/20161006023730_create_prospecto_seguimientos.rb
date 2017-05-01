class CreateProspectoSeguimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_seguimientos do |t|
      t.references :prospecto, foreign_key: true
      t.integer :escala_interes
      t.string :ayuda_subir_nivel
      t.date :fecha_proxima_reunion
      t.float :aspira_salario
      t.references :promedio_hora, foreign_key: true
      t.references :promedio_mes, foreign_key: true
      t.boolean :dispuesto_a_comenzar
      t.boolean :estatus

      t.timestamps
    end
  end
end
