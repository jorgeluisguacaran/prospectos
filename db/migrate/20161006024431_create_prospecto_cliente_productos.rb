class CreateProspectoClienteProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :prospecto_cliente_productos do |t|
      t.references :prospecto, foreign_key: true
      t.references :producto, foreign_key: true
      t.integer :cantidad
      t.date :fecha_entrega
      t.date :fecha_reposicion

      t.timestamps
    end
  end
end
