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

ActiveRecord::Schema.define(version: 2018_06_02_182740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.integer "crm"
    t.string "speciality"
    t.date "register"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.bigint "patient_treatment_id"
    t.text "reason_exam"
    t.integer "payment"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_exams_on_doctor_id"
    t.index ["insurance_id"], name: "index_exams_on_insurance_id"
    t.index ["patient_id"], name: "index_exams_on_patient_id"
    t.index ["patient_treatment_id"], name: "index_exams_on_patient_treatment_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internments", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.bigint "insurance_id"
    t.bigint "patient_treatment_id"
    t.text "justification"
    t.date "admission"
    t.date "release"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_internments_on_doctor_id"
    t.index ["insurance_id"], name: "index_internments_on_insurance_id"
    t.index ["patient_id"], name: "index_internments_on_patient_id"
    t.index ["patient_treatment_id"], name: "index_internments_on_patient_treatment_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_treatments", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.string "diagnosis"
    t.text "medical_receipt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_patient_treatments_on_doctor_id"
    t.index ["patient_id"], name: "index_patient_treatments_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "cep"
    t.string "cpf"
    t.string "rg"
    t.bigint "insurance_id"
    t.boolean "companion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_patients_on_insurance_id"
  end

  create_table "surgeries", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "doctor_id"
    t.bigint "insurance_id"
    t.bigint "patient_treatment_id"
    t.text "reason"
    t.date "scheduling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_surgeries_on_doctor_id"
    t.index ["insurance_id"], name: "index_surgeries_on_insurance_id"
    t.index ["patient_id"], name: "index_surgeries_on_patient_id"
    t.index ["patient_treatment_id"], name: "index_surgeries_on_patient_treatment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "roles_mask"
    t.boolean "admin"
    t.boolean "physician"
    t.boolean "reception"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "exams", "doctors"
  add_foreign_key "exams", "insurances"
  add_foreign_key "exams", "patient_treatments"
  add_foreign_key "exams", "patients"
  add_foreign_key "internments", "doctors"
  add_foreign_key "internments", "insurances"
  add_foreign_key "internments", "patient_treatments"
  add_foreign_key "internments", "patients"
  add_foreign_key "patient_treatments", "doctors"
  add_foreign_key "patient_treatments", "patients"
  add_foreign_key "patients", "insurances"
  add_foreign_key "surgeries", "doctors"
  add_foreign_key "surgeries", "insurances"
  add_foreign_key "surgeries", "patient_treatments"
  add_foreign_key "surgeries", "patients"
end
