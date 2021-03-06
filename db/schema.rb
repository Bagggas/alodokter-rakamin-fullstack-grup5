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

ActiveRecord::Schema.define(version: 2021_12_16_144711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "judul"
    t.text "konten"
    t.text "penulis"
    t.string "kategori"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.time "start_time"
    t.time "end_time"
    t.string "profile_pasien"
    t.string "nik"
    t.date "hari"
    t.text "address"
    t.string "status"
    t.bigint "doctor_id", null: false
    t.bigint "pasien_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_bookings_on_doctor_id"
    t.index ["pasien_id"], name: "index_bookings_on_pasien_id"
  end

  create_table "docdays", force: :cascade do |t|
    t.string "hari"
    t.date "tanggal"
    t.bigint "doctor_id", null: false
    t.index ["doctor_id"], name: "index_docdays_on_doctor_id"
  end

  create_table "doctimes", force: :cascade do |t|
    t.string "jam"
    t.time "start_time"
    t.time "end_time"
    t.bigint "docday_id", null: false
    t.index ["docday_id"], name: "index_doctimes_on_docday_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "nama"
    t.text "about"
    t.string "spesialis"
    t.bigint "harga_konsul"
    t.integer "rating"
    t.integer "jumlah_pasien"
    t.integer "jumlah_pengalaman"
    t.string "rumah_sakit"
    t.string "lokasi"
    t.string "alamat"
    t.string "edukasi"
    t.string "fakultas"
    t.string "jurusan"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pasiens", force: :cascade do |t|
    t.string "nama"
    t.string "kabupaten_kota"
    t.date "tanggal_lahir"
    t.string "email"
    t.string "password_digest"
    t.integer "umur"
    t.string "jenis_kelamin"
    t.string "no_hp"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "id_pasien"
    t.integer "id_dokter"
    t.datetime "schedule"
    t.string "profile_pasien"
    t.string "nik"
    t.text "address"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "doctors"
  add_foreign_key "bookings", "pasiens"
  add_foreign_key "docdays", "doctors"
  add_foreign_key "doctimes", "docdays"
end
