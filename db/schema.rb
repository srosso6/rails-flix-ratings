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

ActiveRecord::Schema.define(version: 20161117160038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "films", force: :cascade do |t|
    t.string   "imdb_id"
    t.string   "title"
    t.date     "release_date"
    t.string   "genre"
    t.string   "description"
    t.float    "imdb_rating"
    t.float    "tomatoes_rating"
    t.string   "poster"
    t.float    "flix_rating"
    t.integer  "ranking"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "decade"
    t.string   "director"
    t.float    "combined_rating"
    t.index ["imdb_id"], name: "index_films_on_imdb_id", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email_address"], name: "index_users_on_email_address", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "film_id"
    t.string   "type"
    t.integer  "rating_value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
