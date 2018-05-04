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

ActiveRecord::Schema.define(version: 20180503093157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "maids", force: :cascade do |t|
    t.string "m_fname"
    t.string "m_lname"
    t.integer "m_ms"
    t.integer "m_nationality"
    t.datetime "m_dob"
    t.string "m_passport"
    t.integer "m_emp_status"
    t.string "m_wp_no"
    t.datetime "m_wp_exp"
    t.string "sb_transmission"
    t.integer "cov_months"
    t.boolean "security_bond"
    t.boolean "waiver_of_indemnity"
    t.integer "performance_bond"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "portals", force: :cascade do |t|
    t.integer "agency_code"
    t.integer "policy"
    t.integer "product_type"
    t.integer "cp"
    t.float "base_premium"
    t.float "discount"
    t.float "premium"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "load_type"
    t.bigint "load_id"
    t.index ["load_type", "load_id"], name: "index_portals_on_load_type_and_load_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category", default: 0, null: false
    t.index ["category"], name: "index_posts_on_category"
  end

  create_table "properties", force: :cascade do |t|
    t.string "mortgagee"
    t.integer "hc"
    t.integer "building"
    t.integer "renovation"
    t.integer "h_type"
    t.integer "r_type"
    t.boolean "staying"
    t.integer "p_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

end
