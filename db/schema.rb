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

ActiveRecord::Schema[7.0].define(version: 2024_02_02_115015) do
  create_table "card_in_decks", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "pokemon_id"
    t.integer "item_id"
    t.integer "support_id"
    t.integer "pokemon_no_item_id"
    t.integer "stajiamu_id"
    t.integer "energy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_card_in_decks_on_deck_id"
    t.index ["energy_id"], name: "index_card_in_decks_on_energy_id"
    t.index ["item_id"], name: "index_card_in_decks_on_item_id"
    t.index ["pokemon_id"], name: "index_card_in_decks_on_pokemon_id"
    t.index ["pokemon_no_item_id"], name: "index_card_in_decks_on_pokemon_no_item_id"
    t.index ["stajiamu_id"], name: "index_card_in_decks_on_stajiamu_id"
    t.index ["support_id"], name: "index_card_in_decks_on_support_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "energies", force: :cascade do |t|
    t.string "name"
    t.text "koka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "koka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_no_items", force: :cascade do |t|
    t.string "name"
    t.text "koka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "sinka"
    t.string "name"
    t.string "special"
    t.integer "hp"
    t.string "zokusei"
    t.integer "tokusei_id"
    t.integer "skill1_id"
    t.integer "skill2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill1_id"], name: "index_pokemons_on_skill1_id"
    t.index ["skill2_id"], name: "index_pokemons_on_skill2_id"
    t.index ["tokusei_id"], name: "index_pokemons_on_tokusei_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "koka"
    t.integer "attack_point"
    t.string "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stajiamus", force: :cascade do |t|
    t.string "name"
    t.text "koka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supports", force: :cascade do |t|
    t.string "name"
    t.text "koka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokuseis", force: :cascade do |t|
    t.string "name"
    t.text "koka"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "card_in_decks", "decks"
  add_foreign_key "card_in_decks", "energies"
  add_foreign_key "card_in_decks", "items"
  add_foreign_key "card_in_decks", "pokemon_no_items"
  add_foreign_key "card_in_decks", "pokemons"
  add_foreign_key "card_in_decks", "stajiamus"
  add_foreign_key "card_in_decks", "supports"
  add_foreign_key "pokemons", "skills", column: "skill1_id"
  add_foreign_key "pokemons", "skills", column: "skill2_id"
  add_foreign_key "pokemons", "tokuseis"
end
