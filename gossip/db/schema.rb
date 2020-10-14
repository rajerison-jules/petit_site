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

ActiveRecord::Schema.define(version: 2020_10_05_141749) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comment2s", force: :cascade do |t|
    t.string "content"
    t.integer "comment_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_comment2s_on_comment_id"
    t.index ["user_id"], name: "index_comment2s_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "user_id", null: false
    t.integer "potin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["potin_id"], name: "index_comments_on_potin_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "potin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["potin_id"], name: "index_likes_on_potin_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "pms", force: :cascade do |t|
    t.string "content"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pms_on_user_id"
  end

  create_table "potins", force: :cascade do |t|
    t.string "titles"
    t.integer "postal_code"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_potins_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.integer "user_id", null: false
    t.integer "potin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["potin_id"], name: "index_tags_on_potin_id"
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "description"
    t.string "email"
    t.integer "age"
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_users_on_city_id"
  end

  add_foreign_key "comment2s", "comments"
  add_foreign_key "comment2s", "users"
  add_foreign_key "comments", "potins"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "potins"
  add_foreign_key "likes", "users"
  add_foreign_key "pms", "users"
  add_foreign_key "potins", "users"
  add_foreign_key "tags", "potins"
  add_foreign_key "tags", "users"
  add_foreign_key "users", "cities"
end
