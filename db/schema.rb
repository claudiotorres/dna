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

ActiveRecord::Schema.define(:version => 20121126120805) do

  create_table "advices", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "report_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "advices", ["report_id"], :name => "index_advices_on_report_id"

  create_table "answers", :force => true do |t|
    t.string   "questionid"
    t.string   "optionid"
    t.datetime "date"
    t.integer  "dnatest_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "answers", ["dnatest_id"], :name => "index_answers_on_dnatest_id"

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "business"
    t.string   "revenue"
    t.integer  "site_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "companies", ["site_id"], :name => "index_companies_on_site_id"

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.integer  "site_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contacts", ["site_id"], :name => "index_contacts_on_site_id"

  create_table "dnagrades", :force => true do |t|
    t.integer  "general"
    t.integer  "content"
    t.integer  "social"
    t.integer  "mailing"
    t.integer  "viral"
    t.integer  "advertise"
    t.integer  "research"
    t.integer  "monitoring"
    t.datetime "date"
    t.integer  "dnatest_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "dnagrades", ["dnatest_id"], :name => "index_dnagrades_on_dnatest_id"

  create_table "dnatests", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "date"
    t.integer  "site_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "dnatests", ["site_id"], :name => "index_dnatests_on_site_id"

  create_table "evaluations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "plan_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "features", ["plan_id"], :name => "index_features_on_plan_id"

  create_table "options", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "options", ["question_id"], :name => "index_options_on_question_id"

  create_table "plans", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "site_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "plans", ["site_id"], :name => "index_plans_on_site_id"

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "evaluation_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "questions", ["evaluation_id"], :name => "index_questions_on_evaluation_id"

  create_table "reports", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "version"
    t.datetime "date"
    t.integer  "site_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "reports", ["site_id"], :name => "index_reports_on_site_id"

  create_table "sites", :force => true do |t|
    t.string   "url"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tips", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "advice_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tips", ["advice_id"], :name => "index_tips_on_advice_id"

  create_table "weights", :force => true do |t|
    t.string   "strategyid"
    t.integer  "value"
    t.integer  "option_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "weights", ["option_id"], :name => "index_weights_on_option_id"

end
