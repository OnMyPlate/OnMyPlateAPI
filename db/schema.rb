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

ActiveRecord::Schema.define(version: 20141201234958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "likes", force: true do |t|
    t.integer "count"
    t.integer "post_id"
  end

  add_index "likes", ["post_id"], name: "index_likes_on_post_id", using: :btree

  create_table "posts", force: true do |t|
    t.string  "name",       null: false
    t.boolean "bookmarked"
    t.integer "rating",     null: false
    t.text    "review",     null: false
    t.string  "image",      null: false
    t.integer "user_id"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.string  "name",    null: false
    t.string  "city",    null: false
    t.string  "state",   null: false
    t.integer "post_id"
  end

  add_index "restaurants", ["post_id"], name: "index_restaurants_on_post_id", using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "post_id"
  end

  add_index "tags", ["post_id"], name: "index_tags_on_post_id", using: :btree

  create_table "users", force: true do |t|
    t.string "username",        null: false
    t.string "email",           null: false
    t.string "password_digest", null: false
    t.string "token",           null: false
    t.string "image"
  end

end
