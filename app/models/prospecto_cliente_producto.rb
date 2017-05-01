class ProspectoClienteProducto < ApplicationRecord
  belongs_to :Prospecto
  belongs_to :Producto
end
