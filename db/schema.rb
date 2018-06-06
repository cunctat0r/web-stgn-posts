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

ActiveRecord::Schema.define(version: 2018_06_06_053016) do

  create_table "force_limits_sets", force: :cascade do |t|
    t.float "free_weight"
    t.float "detection_limit"
    t.float "warning_limit"
    t.float "alarm_limit"
    t.integer "force_sensor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["force_sensor_id"], name: "index_force_limits_sets_on_force_sensor_id"
  end

  create_table "force_sensors", force: :cascade do |t|
    t.integer "sensor_number"
    t.string "phase"
    t.integer "chain"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_force_sensors_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "num_tower"
    t.string "line_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temperature_sensors", force: :cascade do |t|
    t.integer "sensor_number"
    t.string "phase"
    t.integer "chain"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_temperature_sensors_on_post_id"
  end

end
