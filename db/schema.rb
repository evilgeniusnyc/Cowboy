# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_10_211231) do

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "completion_stage"
    t.integer "project_id", null: false
    t.integer "project_manager_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_assignments_on_project_id"
    t.index ["project_manager_id"], name: "index_assignments_on_project_manager_id"
  end

  create_table "project_managers", force: :cascade do |t|
    t.string "name"
    t.string "nick_name"
    t.string "phone"
    t.string "email"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "budget"
    t.string "est_work_hours"
    t.string "completion_stage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assignments", "project_managers"
  add_foreign_key "assignments", "projects"
end
