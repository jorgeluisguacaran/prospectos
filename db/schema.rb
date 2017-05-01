# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170211030413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "marcas", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "planes", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "promedio_horas", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "promedio_mes", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prospecto_cliente_productos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.integer  "producto_id"
    t.integer  "cantidad"
    t.date     "fecha_entrega"
    t.date     "fecha_reposicion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["producto_id"], name: "index_prospecto_cliente_productos_on_producto_id", using: :btree
    t.index ["prospecto_id"], name: "index_prospecto_cliente_productos_on_prospecto_id", using: :btree
  end

  create_table "prospecto_correos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.string   "correo"
    t.integer  "tipo_correo_id"
    t.boolean  "estatus"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["prospecto_id"], name: "index_prospecto_correos_on_prospecto_id", using: :btree
    t.index ["tipo_correo_id"], name: "index_prospecto_correos_on_tipo_correo_id", using: :btree
  end

  create_table "prospecto_marcas", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.integer  "marca_id"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["marca_id"], name: "index_prospecto_marcas_on_marca_id", using: :btree
    t.index ["prospecto_id"], name: "index_prospecto_marcas_on_prospecto_id", using: :btree
  end

  create_table "prospecto_meta_corto_plazos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.string   "meta_corta"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["prospecto_id"], name: "index_prospecto_meta_corto_plazos_on_prospecto_id", using: :btree
  end

  create_table "prospecto_meta_largo_plazos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.string   "meta_larga"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["prospecto_id"], name: "index_prospecto_meta_largo_plazos_on_prospecto_id", using: :btree
  end

  create_table "prospecto_meta_mediano_plazos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.string   "meta_mediana"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["prospecto_id"], name: "index_prospecto_meta_mediano_plazos_on_prospecto_id", using: :btree
  end

  create_table "prospecto_ocupaciones", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.string   "ocupacion"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["prospecto_id"], name: "index_prospecto_ocupaciones_on_prospecto_id", using: :btree
  end

  create_table "prospecto_planes", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.integer  "usuario_id"
    t.integer  "plan_id"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["plan_id"], name: "index_prospecto_planes_on_plan_id", using: :btree
    t.index ["prospecto_id"], name: "index_prospecto_planes_on_prospecto_id", using: :btree
    t.index ["usuario_id"], name: "index_prospecto_planes_on_usuario_id", using: :btree
  end

  create_table "prospecto_referidos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.string   "nombre_referido"
    t.string   "ocupacion_referido"
    t.integer  "telefono_referido"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["prospecto_id"], name: "index_prospecto_referidos_on_prospecto_id", using: :btree
  end

  create_table "prospecto_seguimientos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.integer  "escala_interes"
    t.string   "ayuda_subir_nivel"
    t.date     "fecha_proxima_reunion"
    t.float    "aspira_salario"
    t.integer  "promedio_hora_id"
    t.integer  "promedio_mes_id"
    t.boolean  "dispuesto_a_comenzar"
    t.boolean  "estatus"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["promedio_hora_id"], name: "index_prospecto_seguimientos_on_promedio_hora_id", using: :btree
    t.index ["promedio_mes_id"], name: "index_prospecto_seguimientos_on_promedio_mes_id", using: :btree
    t.index ["prospecto_id"], name: "index_prospecto_seguimientos_on_prospecto_id", using: :btree
  end

  create_table "prospecto_telefonos", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.integer  "telefono"
    t.integer  "tipo_telefono_id"
    t.boolean  "estatus"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["prospecto_id"], name: "index_prospecto_telefonos_on_prospecto_id", using: :btree
    t.index ["tipo_telefono_id"], name: "index_prospecto_telefonos_on_tipo_telefono_id", using: :btree
  end

  create_table "prospecto_usuarios", force: :cascade do |t|
    t.integer  "prospecto_id"
    t.integer  "usuario_id"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["prospecto_id"], name: "index_prospecto_usuarios_on_prospecto_id", using: :btree
    t.index ["usuario_id"], name: "index_prospecto_usuarios_on_usuario_id", using: :btree
  end

  create_table "prospectos", force: :cascade do |t|
    t.string   "primer_nombre"
    t.string   "telefono2"
    t.string   "telefono1"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "donde_se_conocio"
    t.string   "marca"
    t.string   "buena_referencia"
    t.boolean  "llamar_en_seis_meses"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "dedicacion"
    t.string   "correo",                            comment: "Dirección de Correo Electrónico del Prospecto..."
  end

  create_table "seguimiento_materiales", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seguimiento_respuestas", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipo_correos", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipo_telefonos", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "estatus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuario_planes", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "plan_id"
    t.integer  "nro_personas"
    t.date     "fecha_asignacion"
    t.boolean  "estatus"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["plan_id"], name: "index_usuario_planes_on_plan_id", using: :btree
    t.index ["usuario_id"], name: "index_usuario_planes_on_usuario_id", using: :btree
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "clave"
    t.boolean  "estatus"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "prospecto_cliente_productos", "productos"
  add_foreign_key "prospecto_cliente_productos", "prospectos"
  add_foreign_key "prospecto_correos", "prospectos"
  add_foreign_key "prospecto_correos", "tipo_correos"
  add_foreign_key "prospecto_marcas", "marcas"
  add_foreign_key "prospecto_marcas", "prospectos"
  add_foreign_key "prospecto_meta_corto_plazos", "prospectos"
  add_foreign_key "prospecto_meta_largo_plazos", "prospectos"
  add_foreign_key "prospecto_meta_mediano_plazos", "prospectos"
  add_foreign_key "prospecto_ocupaciones", "prospectos"
  add_foreign_key "prospecto_planes", "planes"
  add_foreign_key "prospecto_planes", "prospectos"
  add_foreign_key "prospecto_planes", "usuarios"
  add_foreign_key "prospecto_referidos", "prospectos"
  add_foreign_key "prospecto_seguimientos", "promedio_horas"
  add_foreign_key "prospecto_seguimientos", "promedio_mes", column: "promedio_mes_id"
  add_foreign_key "prospecto_seguimientos", "prospectos"
  add_foreign_key "prospecto_telefonos", "prospectos"
  add_foreign_key "prospecto_telefonos", "tipo_telefonos"
  add_foreign_key "prospecto_usuarios", "prospectos"
  add_foreign_key "prospecto_usuarios", "usuarios"
  add_foreign_key "usuario_planes", "planes"
  add_foreign_key "usuario_planes", "usuarios"
end
