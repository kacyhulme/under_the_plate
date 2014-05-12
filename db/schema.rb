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

ActiveRecord::Schema.define(version: 20140512223403) do

  create_table "addresses", force: true do |t|
    t.string   "addressable_type"
    t.integer  "addressable_id"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
  end

  create_table "cuisine_categorizations", force: true do |t|
    t.integer  "establishment_id"
    t.integer  "cuisine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cuisine_categorizations", ["cuisine_id"], name: "index_cuisine_categorizations_on_cuisine_id"
  add_index "cuisine_categorizations", ["establishment_id"], name: "index_cuisine_categorizations_on_establishment_id"

  create_table "cuisines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distributors", force: true do |t|
    t.integer  "address_id"
    t.integer  "owner_id"
    t.integer  "food_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "establishments", force: true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.integer  "owner_id"
    t.integer  "distributor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "establishments", ["address_id"], name: "index_establishments_on_address_id"
  add_index "establishments", ["distributor_id"], name: "index_establishments_on_distributor_id"
  add_index "establishments", ["owner_id"], name: "index_establishments_on_owner_id"

  create_table "food_group_categorizations", force: true do |t|
    t.integer  "distributor_id"
    t.integer  "food_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "food_group_categorizations", ["distributor_id"], name: "index_food_group_categorizations_on_distributor_id"
  add_index "food_group_categorizations", ["food_group_id"], name: "index_food_group_categorizations_on_food_group_id"

  create_table "food_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.integer  "ownership_id"
    t.string   "ownership_type"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "owners", ["ownership_type", "ownership_id"], name: "index_owners_on_ownership_type_and_ownership_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
  end

end
