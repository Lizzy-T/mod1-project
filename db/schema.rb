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

ActiveRecord::Schema.define(version: 2019_09_11_193037) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
  end

  create_table "rivers", force: :cascade do |t|
    t.string "name"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "company_id"
    t.string "location"
    t.integer "river_id"
    t.string "name"
    t.integer "rapid_level"
    t.integer "age"
    t.integer "cost"
    t.integer "user_id"
    t.index ["company_id"], name: "index_trips_on_company_id"
    t.index ["river_id"], name: "index_trips_on_river_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
