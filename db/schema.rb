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

ActiveRecord::Schema.define(version: 20140827093802) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "advertises", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "title"
    t.text     "description"
    t.integer  "branch_id"
    t.string   "weblink"
    t.integer  "zone_id"
    t.integer  "cateogry_id"
    t.integer  "subcateogry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "advertises", ["branch_id"], name: "index_advertises_on_branch_id", using: :btree
  add_index "advertises", ["cateogry_id"], name: "index_advertises_on_cateogry_id", using: :btree
  add_index "advertises", ["subcateogry_id"], name: "index_advertises_on_subcateogry_id", using: :btree
  add_index "advertises", ["zone_id"], name: "index_advertises_on_zone_id", using: :btree

  create_table "branches", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country_name"
    t.string   "zip"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone_number"
  end

  add_index "branches", ["store_id"], name: "index_branches_on_store_id", using: :btree

  create_table "cateogries", force: true do |t|
    t.string   "name"
    t.string   "unique_url_string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "subcateogry_id"
    t.integer  "cateogry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stores", ["cateogry_id"], name: "index_stores_on_cateogry_id", using: :btree
  add_index "stores", ["subcateogry_id"], name: "index_stores_on_subcateogry_id", using: :btree
  add_index "stores", ["user_id"], name: "index_stores_on_user_id", using: :btree

  create_table "subcateogries", force: true do |t|
    t.string   "name"
    t.string   "unique_url_string"
    t.integer  "cateogry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcateogries", ["cateogry_id"], name: "index_subcateogries_on_cateogry_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country_name"
    t.string   "zip"
    t.string   "twitter_link"
    t.string   "facebook_link"
    t.string   "linkedin_link"
    t.boolean  "approve"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "zones", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "amount",     precision: 10, scale: 0
  end

end
