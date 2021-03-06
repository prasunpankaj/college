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

ActiveRecord::Schema.define(version: 20161212131410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "student_subjects", force: :cascade do |t|
    t.integer  "student_id", null: false
    t.integer  "subject_id", null: false
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "email",                      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mobile_no",                  null: false
    t.text     "address"
    t.datetime "dob",                        null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "student_image_file_name"
    t.string   "student_image_content_type"
    t.integer  "student_image_file_size"
    t.datetime "student_image_updated_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "student_subjects", "students"
  add_foreign_key "student_subjects", "subjects"
end
