json.extract! usuario_plan, :id, :Usuario_id, :Plan_id, :nro_personas, :fecha_asignacion, :estatus, :created_at, :updated_at
json.url usuario_plan_url(usuario_plan, format: :json)