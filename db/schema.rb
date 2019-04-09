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

ActiveRecord::Schema.define(version: 2019_04_08_054538) do

  create_table "clients", force: :cascade do |t|
    t.string "owner_name"
    t.string "phonetic_name"
    t.string "pet_name"
    t.string "pet_type"
    t.time "reserve_time"
    t.string "visit_purpose"
    t.string "visit_case"
  end

end
