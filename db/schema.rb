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

ActiveRecord::Schema.define(version: 2020_06_15_234237) do

  create_table "love_languages", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "personalities", force: :cascade do |t|
    t.string "personality_name"
    t.string "personality_code"
  end

  create_table "stud_love_languages", force: :cascade do |t|
    t.integer "student_id"
    t.integer "love_language_id"
    t.string "type"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "siblings"
    t.boolean "pets"
    t.integer "personality_id"
  end

end
