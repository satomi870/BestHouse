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

ActiveRecord::Schema.define(version: 2022_12_24_064832) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "area_groups", force: :cascade do |t|
    t.string "area_group_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string "area_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "area_group_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comment_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "comment_id", null: false
    t.string "body", null: false
    t.integer "relation", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "question_id", null: false
    t.integer "target_comment_id"
    t.string "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "relation"
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "user_id", null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "gender", null: false
    t.string "age", null: false
    t.string "nationality", null: false
    t.string "email", null: false
    t.string "telephone_number"
    t.string "address"
    t.string "occupation"
    t.string "schedule", null: false
    t.string "hope", null: false
    t.text "contact", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "histories", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "sender_id", null: false
    t.integer "receiver_id", null: false
    t.integer "question_id"
    t.integer "comment_id"
    t.integer "original_comment_id"
    t.string "action", null: false
    t.boolean "checked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "area_id", null: false
    t.integer "area_group_id", null: false
    t.string "property_name", null: false
    t.string "address", null: false
    t.string "access", null: false
    t.integer "rent", null: false
    t.string "condition", null: false
    t.string "vacancy", null: false
    t.string "introduction", null: false
    t.integer "common_service_fee", null: false
    t.string "room_facility", null: false
    t.string "living", null: false
    t.string "kitchen", null: false
    t.string "bath", null: false
    t.string "toilet", null: false
    t.string "wash_room", null: false
    t.string "washing_machine", null: false
    t.string "event", null: false
    t.string "latitude", null: false
    t.string "altitude", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cleaning_support"
    t.string "breadth"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "property_id", null: false
    t.string "title", null: false
    t.string "body", null: false
    t.boolean "checked", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "relation"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "user_id", null: false
    t.integer "relation", null: false
    t.integer "score", null: false
    t.integer "atmosphere", null: false
    t.integer "cleanliness_shared", null: false
    t.integer "congestion_shared", null: false
    t.integer "noise", null: false
    t.integer "distance_sense", null: false
    t.integer "net_speed", null: false
    t.integer "shower", null: false
    t.integer "event", null: false
    t.string "repeat", null: false
    t.string "title", null: false
    t.string "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "relation_detail"
  end

  create_table "rules", force: :cascade do |t|
    t.integer "property_id", null: false
    t.integer "user_id", null: false
    t.string "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tag_properties", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nickname"
    t.string "gender"
    t.string "age"
    t.boolean "is_deleted", default: false
    t.boolean "is_active", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
