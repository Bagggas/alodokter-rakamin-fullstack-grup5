require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# generate 20 users
(1..20).each do |id|
  Pasien.create!(
# each user is assigned an id from 1-20
      nama: Faker::Name.name,
      kabupaten_kota: Faker::Address.city,
      tanggal_lahir: Faker::Date.between(from: 2.days.ago, to: Date.today),
      email: Faker::Internet.email,
      password: 'password',
      umur: rand(1..20),
      jenis_kelamin: 'P',
      no_hp: Faker::PhoneNumber.cell_phone_in_e164,
      foto: 'https://images.pexels.com/photos/10153600/pexels-photo-10153600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  )
end

(1..3).each do |id|
  Article.create!(
# each user is assigned an id from 1-20
      judul: Faker::Science.science,
      konten: Faker::Lorem.paragraph,
      kategori: 'Kesehatan',
      penulis: Faker::Name.male_first_name ,
      foto: Faker::LoremFlickr.image(size: "720x720" ,search_terms:['health']),
  )
end

(1..3).each do |id|
  Article.create!(
# each user is assigned an id from 1-20
      judul: Faker::Science::science,
      konten: Faker::Lorem.paragraph,
      kategori: 'Kehamilan',
      penulis: Faker::Name.male_first_name ,
      foto: Faker::LoremFlickr.image(size: "720x720",search_terms:['apple']),
  )
end

Doctor.create([
  {
    nama: 'Lamoli',
    about: 'Mollit occaecat dolor non amet nulla consequat ea culpa.',
    spesialis: 'Bidan',
    harga_konsul: 1000000,
    rating: 10,
    jumlah_pasien: 100,
    jumlah_pengalaman: 17,
    rumah_sakit: "Rumah Sakit Jiwa",
    lokasi: 'solo',
    alamat: 'Hayam Wuruk St No.34, RW.1, Kebon Kelapa, Gambir, Central Jakarta City, Jakarta 10120',
    edukasi: 'pendidikan',
    fakultas: 'teknik',
    jurusan: 'Laws',
  },
])

Docday.create([
  {
    hari: 'Senin',
    tanggal: '2021-12-31',
    doctor_id: '1',
  },
  {
    hari: 'Selasa',
    tanggal: '2021-12-31',
    doctor_id: '1',
  },
])

Doctime.create([
  {
    jam: '10.00-12.00',
    docday_id: '1',
  },
  {
    jam: '14.00-18.00',
    docday_id: '1',
  },
])