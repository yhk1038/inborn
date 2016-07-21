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

ActiveRecord::Schema.define(version: 20160721163212) do

  create_table "boards", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "visible"
    t.integer  "turn"
    t.integer  "a_read"
    t.integer  "a_write"
    t.integer  "a_delete"
    t.integer  "a_secret"
    t.integer  "intab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intabs", force: :cascade do |t|
    t.integer  "tab_id"
    t.string   "title"
    t.string   "description"
    t.integer  "turn"
    t.string   "template"
    t.text     "container"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "main_boards", force: :cascade do |t|
    t.integer  "board_id"
    t.integer  "board_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "content"
    t.string   "kind"
    t.string   "img1"
    t.string   "img2"
    t.string   "file1"
    t.string   "file2"
    t.integer  "user_id"
    t.integer  "board_id"
    t.integer  "is_secret"
    t.integer  "viewcount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "post_id"
    t.integer  "is_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tabs", force: :cascade do |t|
    t.string   "title"
    t.string   "icon"
    t.string   "picture"
    t.integer  "turn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
