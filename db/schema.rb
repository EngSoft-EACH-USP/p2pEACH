# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_08_231015) do

  create_table "anuncios", force: :cascade do |t|
    t.string "item"
    t.text "descrição"
    t.text "horário"
    t.string "tags"
    t.string "picture"
    t.string "tipo"
    t.string "estado"
    t.integer  "usuario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
  
  add_index "anuncios", ["usuario_id"], name: "index_anuncios_on_usuario_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "snome"
    t.string "email"
    t.string "password_digest"
    t.string "fone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
  end
  
  add_foreign_key "anuncios", "usuarios"
end
