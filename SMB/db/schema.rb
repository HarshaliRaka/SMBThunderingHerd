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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150330125806) do

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.string   "phone_number"
    t.string   "email"
    t.string   "pancard"
    t.string   "joined"
    t.boolean  "left",         :default => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "invoice_items", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "item"
    t.integer  "qtity"
    t.integer  "amount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.string   "customer_name"
    t.boolean  "paid"
    t.string   "mode"
    t.string   "customer_email"
    t.string   "total_amount"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "quantity"
    t.integer  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "merchants", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payrolls", :force => true do |t|
    t.integer  "basic",              :default => 0
    t.integer  "hra",                :default => 0
    t.integer  "special",            :default => 0
    t.integer  "conveyance",         :default => 0
    t.integer  "bonus",              :default => 0
    t.integer  "income_others",      :default => 0
    t.integer  "hra_exempt",         :default => 0
    t.integer  "prof_tax",           :default => 2400
    t.integer  "pf",                 :default => 0
    t.integer  "ppf",                :default => 0
    t.integer  "vpf",                :default => 0
    t.integer  "lic",                :default => 0
    t.integer  "hlpr",               :default => 0
    t.integer  "ulip",               :default => 0
    t.integer  "elss",               :default => 0
    t.integer  "nsc",                :default => 0
    t.integer  "infrastructure",     :default => 0
    t.integer  "nss",                :default => 0
    t.integer  "mutual_fund",        :default => 0
    t.integer  "child_edu",          :default => 0
    t.integer  "fixed_deposit",      :default => 0
    t.integer  "pension",            :default => 0
    t.integer  "national_pension",   :default => 0
    t.integer  "rgess",              :default => 0
    t.integer  "mediclaim",          :default => 0
    t.integer  "education_loan",     :default => 0
    t.integer  "housing_loan",       :default => 0
    t.integer  "handicap_self",      :default => 0
    t.integer  "handicap_dependent", :default => 0
    t.integer  "donations",          :default => 0
    t.integer  "sal",                :default => 0
    t.integer  "income_tax",         :default => 0
    t.integer  "education_cess",     :default => 0
    t.integer  "surcharge",          :default => 0
    t.integer  "rebate",             :default => 0
    t.integer  "taxable_income",     :default => 0
    t.integer  "total_tax",          :default => 0
    t.integer  "tax_month",          :default => 0
    t.integer  "sec80c",             :default => 0
    t.integer  "sec80cg",            :default => 0
    t.integer  "rent",               :default => 0
    t.integer  "employee_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "save_taxes", :force => true do |t|
    t.integer  "employee_id"
    t.string   "act_name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
