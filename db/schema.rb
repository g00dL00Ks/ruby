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

ActiveRecord::Schema.define(version: 20160113053834) do

  create_table "pros", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
    t.text     "description"
    t.integer  "year_started"
    t.string   "city"
    t.integer  "location"
    t.integer  "gender"
    t.text     "certifications"
    t.text     "specialty"
    t.string   "hometown"
    t.text     "quote"
    t.string   "author"
    t.text     "tip"
    t.text     "facebook_page"
    t.text     "twitter_handle"
    t.text     "instagram_handle"
    t.text     "pinterest_handle"
    t.text     "pinterest_link"
    t.text     "linkedin_page"
    t.string   "paypal_email"
    t.integer  "phone"
    t.string   "alt_email"
    t.boolean  "loc_inperson_private"
    t.boolean  "loc_inperson_public"
    t.boolean  "loc_inperson_yourspace"
    t.boolean  "loc_virtual_short"
    t.boolean  "loc_virtual_long"
    t.text     "pre_work"
    t.text     "cancellation"
    t.boolean  "everyday"
    t.boolean  "execs"
    t.boolean  "celebs"
    t.boolean  "bridal"
    t.boolean  "prenatal"
    t.boolean  "petites"
    t.boolean  "plus_size"
    t.boolean  "travelers"
    t.boolean  "men"
    t.boolean  "women"
    t.boolean  "lgbt"
    t.boolean  "age_und20"
    t.boolean  "age_20_30"
    t.boolean  "age_30_40"
    t.boolean  "age_40_50"
    t.boolean  "age_50_60"
    t.boolean  "age_60over"
    t.boolean  "closet"
    t.boolean  "personal_styling"
    t.boolean  "personal_shopping"
    t.boolean  "commercial"
    t.boolean  "bundle_offers"
    t.text     "stylist_other"
    t.boolean  "weight_loss"
    t.boolean  "weight_gain"
    t.boolean  "firming"
    t.boolean  "bootcamp"
    t.boolean  "bodybuilding"
    t.boolean  "endurance"
    t.boolean  "trainer_prenatal"
    t.boolean  "recovery"
    t.boolean  "nutrition_planning"
    t.boolean  "yoga"
    t.boolean  "pilates"
    t.boolean  "trainer_bundle"
    t.text     "trainer_other"
    t.boolean  "nutrition_analysis"
    t.boolean  "meal_planning"
    t.boolean  "food_sensitivity"
    t.boolean  "grocery"
    t.boolean  "pantry"
    t.boolean  "supplement"
    t.boolean  "body_comp"
    t.boolean  "nutritionist_bundle"
    t.text     "nutritionist_other"
    t.boolean  "transition"
    t.boolean  "interview"
    t.boolean  "exec_coaching"
    t.boolean  "lifestyle_coaching"
    t.boolean  "public_speaking"
    t.boolean  "dating"
    t.boolean  "time_mgmt"
    t.boolean  "ADD_coaching"
    t.boolean  "stress_mgmt"
    t.boolean  "parenting"
    t.boolean  "spirituality"
    t.boolean  "coach_bundle"
    t.text     "coach_other"
    t.text     "q_enjoy"
    t.text     "q_approach"
    t.text     "q_common"
  end

  add_index "pros", ["user_id"], name: "index_pros_on_user_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "level"
    t.boolean  "trainer"
    t.boolean  "stylist"
    t.boolean  "dietician"
    t.boolean  "nutritionist"
    t.boolean  "health_coach"
    t.boolean  "career_coach"
    t.boolean  "life_coach"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
