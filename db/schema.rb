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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161021223045) do

  create_table "caballos", force: true do |t|
    t.string   "nombre"
    t.string   "padre"
    t.string   "madre"
    t.date     "fechanac"
    t.string   "lugarnac"
    t.string   "sexo"
    t.string   "color"
    t.float    "peso",        limit: 24
    t.string   "alzada"
    t.string   "propietario"
    t.boolean  "convenio"
    t.boolean  "defuncion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "telefono"
    t.string   "movil"
    t.string   "correo"
    t.string   "domicilio"
    t.string   "ciudad"
    t.string   "pais"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monedas", force: true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.string   "simbolo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "precios", force: true do |t|
    t.integer  "caballo_id"
    t.integer  "cliente_id"
    t.float    "importe",    limit: 24
    t.integer  "tipo_id"
    t.integer  "moneda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
