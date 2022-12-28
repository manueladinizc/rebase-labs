# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_27_190029) do
  create_table "exams", force: :cascade do |t|
    t.string "registration_number"
    t.string "name"
    t.string "email"
    t.date "birth_date"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "doctor_crm"
    t.string "doctor_crm_state"
    t.string "doctor_name"
    t.string "doctor_email"
    t.string "exam_token"
    t.date "exam_date"
    t.string "exam_type"
    t.string "exam_limit"
    t.string "exam_type_result"
    t.index ["registration_number", "name", "email", "birth_date", "address", "city", "state", "doctor_crm", "doctor_crm_state", "doctor_name", "doctor_email", "exam_token", "exam_date", "exam_type", "exam_limit", "exam_type_result"], name: "patient", unique: true
  end

end
