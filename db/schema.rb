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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academico", id: false, force: :cascade do |t|
    t.string "rut", limit: 11, comment: "Rut del academico.", array: true
    t.string "Nombre", limit: 200, array: true
    t.serial "id", null: false
    t.string "jornada", limit: 50, array: true
    t.string "descripcion", limit: 100, array: true
  end

  create_table "alumno", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.string "nombre", limit: 200, array: true
    t.string "carrera", limit: 200, array: true
    t.string "descripcion", limit: 300, array: true
  end

  create_table "casilla", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.string "nombre", limit: 150, array: true
    t.string "url", limit: 200, array: true
  end

  create_table "egresado", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.string "nombre", limit: 200, array: true
    t.integer "telefono"
    t.string "otro", limit: 200, array: true
  end

  create_table "evento", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.string "nombre", limit: 200, array: true
    t.string "cuerpo", limit: 1000, array: true
    t.integer "fecha", limit: 2, array: true
    t.string "hora", limit: 20, array: true
  end

  create_table "menu", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.string "nombre", limit: 50, array: true
    t.string "descripcion", limit: 200, array: true
  end

  create_table "noticia", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "nombre"
    t.string "Cuerpo", limit: 2000, array: true
    t.string "Imagen", limit: 200, array: true
  end

  create_table "usuario", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.string "nombre", limit: 100
    t.string "privilegio", comment: "Se colocará el privilegio/acceso que tendra a la pagina."
    t.string "descripcion", limit: 200, array: true
  end

end
