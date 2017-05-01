class ProspectoSeguimiento < ApplicationRecord
  belongs_to :Prospecto
  belongs_to :PromedioHora
  belongs_to :PromedioMes
end
