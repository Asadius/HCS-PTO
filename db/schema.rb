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

ActiveRecord::Schema.define(version: 20180419174143) do

# Could not dump table "calendar_events" because of following StandardError
#   Unknown type 'array' for column 'volunteer_list'

  create_table "calendar_events_user_accounts", id: false, force: :cascade do |t|
    t.integer "calendar_event_id", null: false
    t.integer "user_account_id", null: false
  end

  create_table "user_accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "accounttype", default: ""
    t.string "name", default: ""
    t.string "childname", default: ""
    t.integer "childgrade"
    t.string "homeaddress", default: ""
    t.index ["email"], name: "index_user_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_accounts_on_reset_password_token", unique: true
  end

end
