class CreateUsuarioPlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_planes do |t|
      t.references :usuario, foreign_key: true
      t.references :plan, foreign_key: true
      t.integer :nro_personas
      t.date :fecha_asignacion
      t.boolean :estatus

      t.timestamps
    end
  end
end
