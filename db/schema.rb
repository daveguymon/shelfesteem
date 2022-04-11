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

ActiveRecord::Schema[7.0].define(version: 2022_04_10_231426) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.string "authors", default: [], array: true
    t.text "description"
    t.integer "page_count"
    t.string "categories", default: [], array: true
    t.string "image_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shelves", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shelvings", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "shelf_id", null: false
    t.index ["book_id", "shelf_id"], name: "index_shelvings_on_book_id_and_shelf_id"
    t.index ["shelf_id", "book_id"], name: "index_shelvings_on_shelf_id_and_book_id"
  end

end
