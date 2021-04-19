# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_19_165929) do

  create_table "articulos", force: :cascade do |t|
    t.string "titulo"
    t.text "contenido"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "autor_id"
    t.index ["autor_id"], name: "index_articulos_on_autor_id"
  end

  create_table "autors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_autors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_autors_on_reset_password_token", unique: true
  end

  create_table "comentarios", force: :cascade do |t|
    t.text "nombre"
    t.string "texto"
    t.integer "articulo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["articulo_id"], name: "index_comentarios_on_articulo_id"
  end

  add_foreign_key "comentarios", "articulos"
end
