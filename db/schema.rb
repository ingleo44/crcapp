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

ActiveRecord::Schema.define(version: 20150711181413) do

  create_table "cities", force: :cascade do |t|
    t.integer  "state_id",   limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "exams", force: :cascade do |t|
    t.integer  "paciente_id", limit: 4
    t.datetime "date"
    t.string   "status",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "exams", ["paciente_id"], name: "index_exams_on_paciente_id", using: :btree

  create_table "exfonos", force: :cascade do |t|
    t.integer  "exam_id",    limit: 4
    t.string   "status",     limit: 255
    t.integer  "fonq01",     limit: 4
    t.integer  "fonq02",     limit: 4
    t.integer  "fonq03",     limit: 4
    t.integer  "fonq04",     limit: 4
    t.integer  "fonq05",     limit: 4
    t.integer  "fonq06",     limit: 4
    t.integer  "fonq07",     limit: 4
    t.integer  "fonq08",     limit: 4
    t.integer  "fonq09",     limit: 4
    t.integer  "fonq10",     limit: 4
    t.integer  "fonq11",     limit: 4
    t.integer  "fonq12",     limit: 4
    t.integer  "fonq13",     limit: 4
    t.integer  "fonq14",     limit: 4
    t.integer  "fonq15",     limit: 4
    t.integer  "fonq16",     limit: 4
    t.integer  "fonq17",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "exfonos", ["exam_id"], name: "index_exfonos_on_exam_id", using: :btree

  create_table "exmedicos", force: :cascade do |t|
    t.integer  "exam_id",    limit: 4
    t.boolean  "medAP01",    limit: 1
    t.boolean  "medAP02",    limit: 1
    t.boolean  "medAP03",    limit: 1
    t.boolean  "medAP04",    limit: 1
    t.boolean  "medAP05",    limit: 1
    t.boolean  "medAP06",    limit: 1
    t.boolean  "medAP07",    limit: 1
    t.boolean  "medAP08",    limit: 1
    t.boolean  "medAP09",    limit: 1
    t.boolean  "medAP10",    limit: 1
    t.boolean  "medAP11",    limit: 1
    t.boolean  "medAP12",    limit: 1
    t.boolean  "medAP13",    limit: 1
    t.boolean  "medAP14",    limit: 1
    t.boolean  "medAP15",    limit: 1
    t.boolean  "medAP16",    limit: 1
    t.boolean  "medAP17",    limit: 1
    t.boolean  "medAP018",   limit: 1
    t.text     "medq01",     limit: 65535
    t.boolean  "medAF01",    limit: 1
    t.boolean  "medAF02",    limit: 1
    t.boolean  "medAF03",    limit: 1
    t.boolean  "medAF04",    limit: 1
    t.boolean  "medAF05",    limit: 1
    t.boolean  "medAF06",    limit: 1
    t.boolean  "medAF07",    limit: 1
    t.boolean  "medAF08",    limit: 1
    t.boolean  "medAF09",    limit: 1
    t.boolean  "medAF10",    limit: 1
    t.boolean  "medAF11",    limit: 1
    t.boolean  "medAF12",    limit: 1
    t.boolean  "medAF13",    limit: 1
    t.boolean  "medAF14",    limit: 1
    t.boolean  "medAF15",    limit: 1
    t.boolean  "medAF16",    limit: 1
    t.boolean  "medAF17",    limit: 1
    t.boolean  "medAF018",   limit: 1
    t.text     "medq02",     limit: 65535
    t.integer  "medq03",     limit: 4
    t.integer  "medq04",     limit: 4
    t.integer  "medq05",     limit: 4
    t.integer  "medq06",     limit: 4
    t.integer  "medq07",     limit: 4
    t.integer  "medq08",     limit: 4
    t.integer  "medq09",     limit: 4
    t.date     "medq10"
    t.date     "medq11"
    t.string   "medq12",     limit: 255
    t.string   "medq13",     limit: 255
    t.string   "medq14",     limit: 255
    t.string   "medq15",     limit: 255
    t.string   "medq16",     limit: 255
    t.string   "medq17",     limit: 255
    t.string   "medq18",     limit: 255
    t.string   "medq19",     limit: 255
    t.string   "medq20",     limit: 255
    t.integer  "medq21",     limit: 4
    t.decimal  "medq22",                   precision: 10
    t.integer  "medq23",     limit: 4
    t.integer  "medq24",     limit: 4
    t.integer  "medq25",     limit: 4
    t.decimal  "medq26",                   precision: 10
    t.decimal  "medq27",                   precision: 10
    t.string   "medq28",     limit: 255
    t.text     "medq29",     limit: 65535
    t.date     "medq30"
    t.text     "medq31",     limit: 65535
    t.date     "medq32"
    t.text     "medq33",     limit: 65535
    t.text     "medq34",     limit: 65535
    t.string   "medq35",     limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "status",     limit: 255
  end

  add_index "exmedicos", ["exam_id"], name: "index_exmedicos_on_exam_id", using: :btree

  create_table "exoptos", force: :cascade do |t|
    t.integer  "exam_id",    limit: 4
    t.string   "status",     limit: 255
    t.integer  "optq01",     limit: 4
    t.integer  "optq02",     limit: 4
    t.integer  "optq03",     limit: 4
    t.integer  "optq04",     limit: 4
    t.integer  "optq05",     limit: 4
    t.integer  "optq06",     limit: 4
    t.integer  "optq07",     limit: 4
    t.integer  "optq08",     limit: 4
    t.integer  "optq09",     limit: 4
    t.integer  "optq10",     limit: 4
    t.integer  "optq11",     limit: 4
    t.integer  "optq12",     limit: 4
    t.integer  "optq13",     limit: 4
    t.integer  "optq14",     limit: 4
    t.integer  "optq15",     limit: 4
    t.integer  "optq16",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "exoptos", ["exam_id"], name: "index_exoptos_on_exam_id", using: :btree

  create_table "expsicos", force: :cascade do |t|
    t.integer  "exam_id",    limit: 4
    t.string   "status",     limit: 255
    t.integer  "psiq01",     limit: 4
    t.integer  "psiq02",     limit: 4
    t.integer  "psiq03",     limit: 4
    t.integer  "psiq04",     limit: 4
    t.integer  "psiq05",     limit: 4
    t.string   "psiq06",     limit: 255
    t.string   "psiq07",     limit: 255
    t.string   "psiq08",     limit: 255
    t.integer  "psiq09",     limit: 4
    t.string   "psiq10",     limit: 255
    t.string   "psiq11",     limit: 255
    t.string   "psiq12",     limit: 255
    t.integer  "psiq13",     limit: 4
    t.integer  "psiq14",     limit: 4
    t.integer  "psiq15",     limit: 4
    t.integer  "psiq16",     limit: 4
    t.integer  "psiq17",     limit: 4
    t.integer  "psiq18",     limit: 4
    t.integer  "psiq19",     limit: 4
    t.integer  "psiq20",     limit: 4
    t.integer  "psiq21",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "expsicos", ["exam_id"], name: "index_expsicos_on_exam_id", using: :btree

  create_table "pacientes", force: :cascade do |t|
    t.string   "firstname",   limit: 255
    t.string   "lastname",    limit: 255
    t.text     "address",     limit: 65535
    t.string   "phone",       limit: 255
    t.string   "mobile",      limit: 255
    t.date     "birthdate"
    t.string   "civilstatus", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "cedula",      limit: 255
    t.string   "sexo",        limit: 255
    t.integer  "city",        limit: 4
    t.integer  "state",       limit: 4
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
