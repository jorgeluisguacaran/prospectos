class ProspectoTelefono < ApplicationRecord
  belongs_to :Prospecto
  belongs_to :TipoTelefono
end
