# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110103133628) do

  create_table "aboutjrs", :force => true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "affiliates", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tel"
    t.integer  "news"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "home_infos", :force => true do |t|
    t.string   "name"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurance_businesses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "img_titulo"
    t.string   "span_name_id"
    t.integer  "insurance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type"
  end

  create_table "insurances", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.string   "street"
    t.integer  "number"
    t.string   "neighborhood"
    t.string   "cep"
    t.string   "city"
    t.string   "state"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fax"
  end

  create_table "type_insurances", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url_img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                         :null => false
    t.string   "login",                        :null => false
    t.string   "pass",                         :null => false
    t.boolean  "active",     :default => true, :null => false
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
