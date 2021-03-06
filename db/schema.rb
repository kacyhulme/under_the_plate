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

ActiveRecord::Schema.define(version: 20150410170920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "addressable_type"
    t.integer  "addressable_id"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "longitude"
    t.float    "latitude"
  end

  add_index "addresses", ["addressable_id", "addressable_type"], name: "index_addresses_on_addressable_id_and_addressable_type", using: :btree
  add_index "addresses", ["latitude"], name: "index_addresses_on_latitude", using: :btree
  add_index "addresses", ["longitude"], name: "index_addresses_on_longitude", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "stars"
    t.text     "text"
    t.integer  "user_id"
    t.integer  "establishment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["establishment_id"], name: "index_comments_on_establishment_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "cuisine_categorizations", force: true do |t|
    t.integer  "establishment_id"
    t.integer  "cuisine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cuisine_categorizations", ["cuisine_id"], name: "index_cuisine_categorizations_on_cuisine_id", using: :btree
  add_index "cuisine_categorizations", ["establishment_id"], name: "index_cuisine_categorizations_on_establishment_id", using: :btree

  create_table "cuisines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distributions", force: true do |t|
    t.integer  "establishment_id"
    t.integer  "distributor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "distributions", ["distributor_id"], name: "index_distributions_on_distributor_id", using: :btree
  add_index "distributions", ["establishment_id"], name: "index_distributions_on_establishment_id", using: :btree

  create_table "distributors", force: true do |t|
    t.string   "name"
    t.integer  "food_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.text     "description"
  end

  add_index "distributors", ["slug"], name: "index_distributors_on_slug", using: :btree

  create_table "establishments", force: true do |t|
    t.string   "name"
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.text     "description"
    t.integer  "stars"
  end

  add_index "establishments", ["slug"], name: "index_establishments_on_slug", using: :btree

  create_table "food_group_categorizations", force: true do |t|
    t.integer  "distributor_id"
    t.integer  "food_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "food_group_categorizations", ["distributor_id"], name: "index_food_group_categorizations_on_distributor_id", using: :btree
  add_index "food_group_categorizations", ["food_group_id"], name: "index_food_group_categorizations_on_food_group_id", using: :btree

  create_table "food_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "qualification_statuses", force: true do |t|
    t.boolean  "status"
    t.integer  "establishment_id"
    t.integer  "qualification_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualification_statuses", ["establishment_id"], name: "index_qualification_statuses_on_establishment_id", using: :btree
  add_index "qualification_statuses", ["qualification_id"], name: "index_qualification_statuses_on_qualification_id", using: :btree

  create_table "qualifications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
  end

end
