# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_04_012101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.integer "team_id", null: false
    t.string "name", null: false
    t.string "picture", null: false
    t.string "domain_knowledge"
    t.decimal "skill_score", null: false
    t.integer "skill_rader_front", null: false
    t.integer "skill_rader_back", null: false
    t.integer "skill_rader_infra", null: false
    t.integer "skill_rader_mobile", null: false
    t.integer "skill_rader_db", null: false
    t.integer "skill_rader_design", null: false
    t.integer "Influence_rader_reward", null: false
    t.integer "Influence_rader_penalty", null: false
    t.integer "Influence_rader_proper", null: false
    t.integer "influence_rader_charm", null: false
    t.integer "Influence_rader_reference", null: false
    t.integer "Influence_rader_specialty", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "devsprints", force: :cascade do |t|
    t.integer "sprint_id", null: false
    t.decimal "operation_rate", precision: 4, scale: 3, null: false
    t.decimal "productivity_rate", precision: 4, scale: 3, null: false
    t.integer "num_mension", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.string "desc"
    t.integer "vmp_id", null: false
    t.integer "team_id", null: false
    t.integer "mission_type", null: false
    t.integer "sprint_progress", default: 1, null: false
    t.integer "num_docs", default: 0, null: false
    t.integer "num_plan", default: 0, null: false
    t.integer "num_review", default: 0, null: false
    t.integer "num_retrospect", default: 0, null: false
    t.decimal "excess_cause_bug", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_technical", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_middle", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_support", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_business", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_emergency", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_communication", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_outside", precision: 4, scale: 3, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sprints", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "num_sprint", default: 1, null: false
    t.integer "num_backlog", default: 0, null: false
    t.integer "num_ticket", default: 0, null: false
    t.integer "num_done", default: 0, null: false
    t.integer "num_push", default: 0, null: false
    t.integer "num_pr", default: 0, null: false
    t.integer "num_release", default: 0, null: false
    t.integer "num_debt", default: 0, null: false
    t.integer "num_communication", default: 0, null: false
    t.integer "num_emergency", default: 0, null: false
    t.integer "num_improvement", default: 0, null: false
    t.integer "team_score", default: 0, null: false
    t.decimal "team_operation_rate", default: "0.0", null: false
    t.string "schedule_alert"
    t.decimal "excess_cause_bug", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_technical", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_middle", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_support", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_business", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_emergency", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_communication", precision: 4, scale: 3, null: false
    t.decimal "excess_cause_outside", precision: 4, scale: 3, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "project_id", null: false
    t.string "organization_chart", null: false
    t.string "operation_alert", null: false
    t.string "alert", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vpms", force: :cascade do |t|
    t.string "name", null: false
    t.string "picture", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
