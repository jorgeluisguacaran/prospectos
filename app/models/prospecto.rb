class Prospecto < ApplicationRecord
	has_many :prospecto_ocupaciones
	has_many :prospecto_correos
	has_many :prospecto_telefonos
	has_one  :usuario
end
