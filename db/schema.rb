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

ActiveRecord::Schema.define(:version => 20130421234022) do

  create_table "articles", :force => true do |t|
    t.string   "nombre"
    t.string   "marca"
    t.integer  "department_id"
    t.integer  "retail_unit_id"
    t.float    "precio_por_unidad_de_venta"
    t.integer  "stock"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.text     "nota"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "articles_orders", :id => false, :force => true do |t|
    t.integer  "article_id"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "cantidad"
  end

  create_table "clients", :force => true do |t|
    t.string   "nombre"
    t.string   "calle"
    t.integer  "numero_exterior"
    t.integer  "numero_interior"
    t.integer  "ciudad_id"
    t.integer  "estado_id"
    t.string   "apellido_paterno", :limit => 100
    t.string   "apellido_materno", :limit => 100
    t.string   "email",            :limit => 100
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "user_id"
  end

  create_table "departments", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "order_statuses", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "client_id"
    t.integer  "order_status_id"
    t.float    "monto_total"
    t.date     "fecha_entrega"
    t.integer  "payment_status_id"
    t.date     "fecha_liberacion_pedido"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "payment_statuses", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "retail_units", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "tipo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login",                                     :null => false
    t.string   "persistence_token",                         :null => false
    t.string   "crypted_password",                          :null => false
    t.string   "password_salt",                             :null => false
    t.string   "single_access_token",                       :null => false
    t.string   "perishable_token",                          :null => false
    t.integer  "login_count",         :default => 0,        :null => false
    t.integer  "failed_login_count",  :default => 0,        :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "roles",               :default => "--- []"
  end

end
