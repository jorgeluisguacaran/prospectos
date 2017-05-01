class ProspectoPlan < ApplicationRecord
  belongs_to :Prospecto
  belongs_to :Usuario
  belongs_to :Plan
end
