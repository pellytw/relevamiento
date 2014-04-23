# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140414122447) do

  create_table "escuelas", :force => true do |t|
    t.integer  "nro"
    t.string   "nivel"
    t.string   "nombre"
    t.string   "localidad"
    t.integer  "region"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "localidades", :force => true do |t|
    t.integer  "region_id"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "niveles", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regiones", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relevamientos", :force => true do |t|
    t.string   "nombre_y_apellido"
    t.integer  "tipo_de_documento_id"
    t.integer  "nro_documento"
    t.integer  "escuela_id"
    t.integer  "nivel_id"
    t.integer  "tipo_gestion_id"
    t.integer  "localidad_id"
    t.string   "calle"
    t.integer  "nro"
    t.string   "piso"
    t.string   "depto"
    t.integer  "grado_anio_alumno"
    t.boolean  "regular"
    t.integer  "cant_cuadras"
    t.float    "distancia_km"
    t.string   "servicio_transporte"
    t.string   "telefono_contacto"
    t.string   "rol"
    t.boolean  "activo_pasivo_docente"
    t.boolean  "frente_alumnos"
    t.string   "grado_docente"
    t.string   "turno_docente"
    t.boolean  "activo_pasivo_aux"
    t.string   "lugar_auxiliares"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "role_permissions", :force => true do |t|
    t.integer  "role_id"
    t.string   "regulator"
    t.string   "conduct"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_roles", :force => true do |t|
    t.integer  "role_id"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipo_de_documentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_gestiones", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
