class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.string :descripcion
      t.boolean :estatus

      t.timestamps
    end
  end
end
