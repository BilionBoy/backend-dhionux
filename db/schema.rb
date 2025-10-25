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

ActiveRecord::Schema[7.2].define(version: 2025_10_25_222126) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "g_estados", force: :cascade do |t|
    t.string "nome_fantasia"
    t.string "sigla"
    t.bigint "g_pais_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_pais_id"], name: "index_g_estados_on_g_pais_id"
  end

  create_table "g_municipios", force: :cascade do |t|
    t.string "nome_fantasia"
    t.string "sigla"
    t.string "g_estado", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_paises", force: :cascade do |t|
    t.string "descricao"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "g_estados", "g_paises"
end
