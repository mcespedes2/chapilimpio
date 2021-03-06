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

ActiveRecord::Schema.define(version: 20181107020309) do

  create_table "points", force: :cascade do |t|
    t.integer  "puntos"
    t.integer  "user_id"
    t.integer  "trash_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trash_id"], name: "index_points_on_trash_id"
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "trashes", force: :cascade do |t|
    t.string   "latitud"
    t.string   "longitud"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trashes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
