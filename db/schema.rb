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

ActiveRecord::Schema.define(version: 20181215202420) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurance_policies", force: :cascade do |t|
    t.string   "policyno"
    t.string   "insurer"
    t.decimal  "value"
    t.string   "insurance_type"
    t.date     "current_expiry"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["customer_id"], name: "index_insurance_policies_on_customer_id"
  end

  create_table "renewals", force: :cascade do |t|
    t.string   "policyno"
    t.date     "begin_date"
    t.date     "expiry_date"
    t.integer  "insurance_policy_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["insurance_policy_id"], name: "index_renewals_on_insurance_policy_id"
  end

end
