class ProspectoUsuario < ApplicationRecord
  belongs_to :Prospecto
  belongs_to :Usuario
end
