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

ActiveRecord::Schema.define(version: 20151228042324) do

  create_table "links", force: true do |t|
    t.string  "other_profile"
    t.integer "talent_id"
  end

  create_table "talents", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "content"
    t.text     "phone"
    t.text     "age"
    t.text     "gender"
    t.text     "height"
    t.text     "nationality"
    t.text     "demo"
    t.text     "resume"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
