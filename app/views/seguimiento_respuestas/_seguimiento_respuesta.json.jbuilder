json.extract! seguimiento_respuesta, :id, :descripcion, :estatus, :created_at, :updated_at
json.url seguimiento_respuesta_url(seguimiento_respuesta, format: :json)