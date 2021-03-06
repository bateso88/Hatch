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

ActiveRecord::Schema.define(version: 2021_04_29_140615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.string "company_name"
    t.string "short_description"
    t.string "long_description"
    t.string "requirement"
    t.string "top_three_target_locations"
    t.string "size_guide"
    t.string "budget"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "site_appraisals", force: :cascade do |t|
    t.string "address"
    t.integer "lease_length"
    t.string "fixed_or_rising"
    t.string "rent"
    t.integer "rent_free"
    t.integer "rateable_value"
    t.integer "service_charge"
    t.integer "insurance"
    t.integer "utilities"
    t.integer "members_of_staff"
    t.integer "estimated_total_wages"
    t.integer "cost_of_sales_as_percentage_of_turnover"
    t.string "projections"
    t.integer "fit_out"
    t.integer "designs"
    t.integer "planning_application"
    t.integer "legal_fees"
    t.integer "building_survey"
    t.integer "surveyor"
    t.integer "stamp_duty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_site_appraisals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
