json.extract! seguimiento_material, :id, :descripcion, :estatus, :created_at, :updated_at
json.url seguimiento_material_url(seguimiento_material, format: :json)