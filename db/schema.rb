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

ActiveRecord::Schema.define(version: 2020_08_27_131119) do

  create_table "e_bills", force: :cascade do |t|
    t.integer "store_id"
    t.string "genre_name"
    t.boolean "display_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_equipments", force: :cascade do |t|
    t.integer "store_id"
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "display_status", default: true, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "family_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "kana_family_name", default: "", null: false
    t.string "kana_first_name", default: "", null: false
    t.integer "birthday", default: 0, null: false
    t.integer "job_title", default: 0, null: false
    t.string "nickname", default: "", null: false
    t.string "image_id", default: "", null: false
    t.integer "role", default: 3, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "mannaers_industry"
    t.boolean "permit_to_store_manager"
    t.boolean "get_restaurant_sales_permit_form"
    t.boolean "related_with_antisocial_force"
    t.boolean "unsubscribe_status"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
