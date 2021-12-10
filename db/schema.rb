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

ActiveRecord::Schema.define(version: 2021_12_10_042200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "judul"
    t.text "konten"
    t.text "penulis"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "nama"
    t.text "about"
    t.string "spesialis"
    t.integer "harga_konsul"
    t.integer "rating"
    t.integer "jumlah_pasien"
    t.integer "jumlah_pengalaman"
    t.string "lokasi"
    t.string "edukasi"
    t.string "fakultas"
    t.string "jurusan"
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

end
