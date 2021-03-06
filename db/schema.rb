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

ActiveRecord::Schema.define(version: 20141224144528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: true do |t|
    t.boolean "bookmarked"
    t.integer "user_id"
    t.integer "food_id"
  end

  add_index "bookmarks", ["food_id"], name: "index_bookmarks_on_food_id", using: :btree
  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id", using: :btree

  create_table "food_images", force: true do |t|
    t.string  "image_url"
    t.integer "post_id"
  end

  add_index "food_images", ["post_id"], name: "index_food_images_on_post_id", using: :btree

  create_table "foods", force: true do |t|
    t.string  "name",                                                    null: false
    t.boolean "bookmarked",                              default: false
    t.string  "restaurant_name",                                         null: false
    t.string  "city",                                                    null: false
    t.string  "state",                                                   null: false
    t.decimal "avg_rating",      precision: 2, scale: 1
    t.integer "user_id"
  end

  add_index "foods", ["user_id"], name: "index_foods_on_user_id", using: :btree

  create_table "likes", force: true do |t|
    t.integer "post_id"
    t.integer "user_id"
  end

  add_index "likes", ["post_id"], name: "index_likes_on_post_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer "rating",  null: false
    t.text    "review",  null: false
    t.integer "user_id"
    t.integer "food_id"
  end

  add_index "posts", ["food_id"], name: "index_posts_on_food_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string  "username",        null: false
    t.string  "email",           null: false
    t.string  "password_digest", null: false
    t.string  "token",           null: false
    t.string  "image_url"
    t.integer "status"
  end

end
