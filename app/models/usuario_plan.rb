class UsuarioPlan < ApplicationRecord
  belongs_to :Usuario
  belongs_to :Plan
end
