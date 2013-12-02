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

ActiveRecord::Schema.define(version: 20131127193556) do

  create_table "boards", force: true do |t|
    t.integer  "player_id"
    t.integer  "green_card_id"
    t.integer  "red_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "green_cards", force: true do |t|
    t.string   "adjective"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "green_card_id"
    t.integer  "point_total_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "point_totals", force: true do |t|
    t.integer  "points"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "red_cards", force: true do |t|
    t.string   "noun"
    t.string   "description"
    t.integer  "board_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
