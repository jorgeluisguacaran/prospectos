json.extract! tipo_correo, :id, :descripcion, :estatus, :created_at, :updated_at
json.url tipo_correo_url(tipo_correo, format: :json)