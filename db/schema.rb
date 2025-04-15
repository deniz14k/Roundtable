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

ActiveRecord::Schema[8.0].define(version: 2025_04_15_142433) do
  create_table "items", force: :cascade do |t|
    t.string "content"
    t.boolean "discussed"
    t.integer "meeting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_items_on_meeting_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.datetime "scheduled_for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "items", "meetings"
end
