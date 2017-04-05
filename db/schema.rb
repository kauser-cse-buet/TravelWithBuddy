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

ActiveRecord::Schema.define(version: 20170403010918) do

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "attendees", force: :cascade do |t|
    t.boolean  "paid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "travel_event_id"
    t.index ["travel_event_id"], name: "index_attendees_on_travel_event_id"
    t.index ["user_id"], name: "index_attendees_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.string   "from"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "travel_event_id"
    t.index ["travel_event_id"], name: "index_invitations_on_travel_event_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "travel_destination_id"
    t.integer  "review_id"
    t.integer  "user_id"
    t.index ["review_id"], name: "index_pictures_on_review_id"
    t.index ["travel_destination_id"], name: "index_pictures_on_travel_destination_id"
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "travel_event_id"
    t.integer  "user_id"
    t.index ["travel_event_id"], name: "index_reviews_on_travel_event_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "travel_destinations", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travel_events", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "max_attendance"
    t.decimal  "price"
    t.datetime "start"
    t.time     "duration"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "travel_destination_id"
    t.integer  "user_id"
    t.index ["travel_destination_id"], name: "index_travel_events_on_travel_destination_id"
    t.index ["user_id"], name: "index_travel_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "admin_id"
    t.string   "image"
    t.index ["admin_id"], name: "index_users_on_admin_id"
  end

end
