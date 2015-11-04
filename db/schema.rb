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

ActiveRecord::Schema.define(version: 20151104082621) do

  create_table "employers", force: :cascade do |t|
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
    t.string   "company_name"
    t.string   "street_name"
    t.integer  "house_number"
    t.integer  "postal_code"
    t.string   "city"
    t.string   "region"
    t.integer  "phone"
    t.string   "gender"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "terms_of_service"
  end

  add_index "employers", ["email"], name: "index_employers_on_email", unique: true
  add_index "employers", ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true

  create_table "freelancers", force: :cascade do |t|
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
    t.string   "last_name"
    t.string   "gender"
    t.string   "first_name"
    t.string   "street_name"
    t.integer  "house_number"
    t.integer  "postal_code"
    t.string   "city"
    t.string   "region"
    t.integer  "phone"
    t.string   "profession"
    t.boolean  "terms_of_service"
  end

  add_index "freelancers", ["email"], name: "index_freelancers_on_email", unique: true
  add_index "freelancers", ["reset_password_token"], name: "index_freelancers_on_reset_password_token", unique: true

  create_table "jobs", force: :cascade do |t|
    t.string   "description"
    t.string   "city"
    t.integer  "length"
    t.string   "job_title"
    t.string   "company"
    t.string   "education_level"
    t.string   "years_experience"
    t.string   "business_field1"
    t.string   "business_field2"
    t.string   "hourly_rate"
    t.string   "region"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "employer_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.date     "project_length"
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id"

end
