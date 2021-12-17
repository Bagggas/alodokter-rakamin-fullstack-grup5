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
      foto: Faker::LoremFlickr.image(search_terms:['health']),
  )
end

(1..3).each do |id|
  Article.create!(
# each user is assigned an id from 1-20
      judul: Faker::Science::science,
      konten: Faker::Lorem.paragraph,
      kategori: 'Kehamilan',
      penulis: Faker::Name.male_first_name ,
      foto: Faker::LoremFlickr.image(search_terms:['apple']),
  )
end

Doctor.create([
  {
    nama: 'dr. Amelia Suganda, Sp.OG',
    foto: 'https://res.cloudinary.com/dk0z4ums3/image/upload/w_100,h_100,c_thumb,g_face,dpr_2.0/v1570171554/image_doctor/dr.%20Amelia%20Suganda%2C%20Sp.OG.png.png',
    about: 'Mollit occaecat dolor non amet nulla consequat ea culpa.',
    spesialis: 'Dokter Kandungan',
    harga_konsul: 125000,
    rating: 10,
    jumlah_pasien: 100,
    jumlah_pengalaman: 17,
    rumah_sakit: "RS Sumber Kasih",
    lokasi: 'Cirebon',
    alamat: 'Hayam Wuruk St No.34, RW.1, Kebon Kelapa, Gambir, Central Jakarta City, Jakarta 10120',
    edukasi: 'Sp.OG - Spesialis Obstetri dan Ginekologi - Universitas Padjadjaran',
    fakultas: 'Kedokteran',
    jurusan: 'Obstetri dan Ginekologi',
  },
  {
    nama: 'dr. Novina Purwita Kartikarini, Sp.OG',
    foto: 'https://res.cloudinary.com/dk0z4ums3/image/upload/w_100,h_100,c_thumb,g_face,dpr_2.0/v1638168945/image_doctor/dr%20Novina%20Purwita%20K.%2C%20SpOG.jpeg.jpg',
    about: 'dr. Novina Purwita Kartikarini, Sp.OG adalah seorang Dokter Kandungan. Saat ini, beliau berpraktik di RSIA Puri Bunda Malang. Beliau dapat membantu layanan Konsultasi kesehatan kebidanan dan kandungan.

    dr. Novina Purwita Kartikarini, Sp.OG menamatkan pendidikan Dokter Spesialis Obstetri dan Ginekologi di Universitas Brawijaya. Beliau juga tercatat sebagai anggota Ikatan Dokter Indonesia (IDI) dan Perkumpulan Obstetri dan Ginekologi Indonesia (POGI).',
    spesialis: 'Dokter Kandungan',
    harga_konsul: 195000,
    rating: 98,
    jumlah_pasien: 400,
    jumlah_pengalaman: 1,
    rumah_sakit: "RSIA Puri Bunda Malang",
    lokasi: 'Malang',
    alamat: 'Hayam Wuruk St No.34, RW.1, Kebon Kelapa, Gambir, Central Jakarta City, Jakarta 10120',
    edukasi: 'Sp.OG - Spesialis Obstetri dan Ginekologi - Universitas Brawijaya',
    fakultas: 'Kedokteran',
    jurusan: 'Obstetri dan Ginekologi',
  },
  {
    nama: 'Prof. DR. dr. Rini Sekartini, Sp.A (K)',
    foto: 'https://res.cloudinary.com/dk0z4ums3/image/upload/w_100,h_100,c_thumb,g_face,dpr_2.0/v1638243617/image_doctor/Prof.%20DR.%20dr.%20Rini%20Sekartini%2C%20Sp.A%20%28K%29.jpg.jpg',
    about: 'Prof. DR. dr. Rini Sekartini, Sp.A (K) adalah seorang Dokter Spesialis Anak Konsultan Tumbuh Kembang. Saat ini, dr. Rini berpraktik di RSIA Bunda Jakarta. Adapun layanan medis yang dapat beliau berikan meliputi : Konsultasi kesehatan anak menyeluruh.

    Prof. DR. dr. Rini Sekartini, Sp.A (K) menempuh pendidikan Dokter Spesialis Anak di Universitas Indonesia. Selain itu, beliau juga terdaftar sebagai anggota dari Ikatan Dokter Indonesia (IDI) dan Ikatan Dokter Anak Indonesia (IDAI).',
    harga_konsul: 655000,
    rating: 100,
    jumlah_pasien: 8,
    jumlah_pengalaman: 1,
    rumah_sakit: "RSIA Bunda Jakarta",
    lokasi: 'Malang',
    alamat: 'Hayam Wuruk St No.34, RW.1, Kebon Kelapa, Gambir, Central Jakarta City, Jakarta 10120',
    edukasi: 'Sp.A - Dokter Spesialis Anak - Universitas Indonesia',
    fakultas: 'Kedokteran',
    jurusan: 'Spesialis Anak',
  },
  {
    nama: 'dr. Dimple Gobind Nagrani, Sp.A',
    foto: 'https://res.cloudinary.com/dk0z4ums3/image/upload/w_100,h_100,c_thumb,g_face,dpr_2.0/v1584974182/image_doctor/dr.%20Dimple%20Gobind%20Nagrani%2C%20Sp.A.jpg.jpg',
    about: 'dr. Dimple Gobind Nagrani, Sp.A adalah Dokter Anak yang berpraktik di RSU Bunda Jakarta dan RSIA Bunda Jakarta. Beliau merupakan lulusan Fakultas Kedokteran Spesialis Anak Universitas Indonesia.

    dr. Dimple Gobind Nagrani tergabung dnegan Ikatan Dokter Indonesia (IDI) dan Ikatan Dokter Anak Indonesia (IDAI). Adapun layanan yang dapat diberikan Beliau meliputi konsultasi kesehatan anak menyeluruh.',
    harga_konsul: 300000,
    rating: 100,
    jumlah_pasien: 8,
    jumlah_pengalaman: 1,
    rumah_sakit: "RSIA Bunda Jakarta",
    lokasi: 'Malang',
    alamat: 'Hayam Wuruk St No.34, RW.1, Kebon Kelapa, Gambir, Central Jakarta City, Jakarta 10120',
    edukasi: 'Sp.A - Dokter Spesialis Anak - Universitas Indonesia',
    fakultas: 'Kedokteran',
    jurusan: 'Spesialis Anak',
  },
])

@hari = Faker::Date.backward(days: 5).strftime("%A")
@tanggal = Faker::Date.backward(days: 5).strftime("%Y-%m-%d")

Docday.create([
  {
    hari: "#{@hari}",
    tanggal: "#{@tanggal}",
    doctor_id: '1',
  },
  {
    hari: "#{@hari}",
    tanggal: "#{@tanggal}",
    doctor_id: '1',
  },
  {
    hari: "#{@hari}",
    tanggal: "#{@tanggal}",
    doctor_id: '2',
  },
  {
    hari: "#{@hari}",
    tanggal: "#{@tanggal}",
    doctor_id: '2',
  },
])

# @jam = Time.now.strftime("%I:%M")

# @jams = Time.now.to_datetime.end_of_day.strftime("%I:%M") 

Doctime.create([
  {
    jam: "10.00-12.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "08:00:00",
    end_time: "12:00:00",
    docday_id: '1',
  },
  {
    jam: "14.00-18.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "13:00:00",
    end_time: "15:00:00",
    docday_id: '1',
  },
  {
    jam: "10.00-12.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "08:00:00",
    end_time: "12:00:00",
    docday_id: '2',
  },
  {
    jam: "14.00-18.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "13:00:00",
    end_time: "15:00:00",
    docday_id: '2',
  },
  {
    jam: "10.00-12.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "08:00:00",
    end_time: "12:00:00",
    docday_id: '3',
  },
  {
    jam: "14.00-18.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "13:00:00",
    end_time: "15:00:00",
    docday_id: '3',
  },
  {
    jam: "10.00-12.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "08:00:00",
    end_time: "12:00:00",
    docday_id: '4',
  },
  {
    jam: "14.00-18.00",
    # start_time: "#{@jam}",
    # end_time: "#{@jams}",
    start_time: "13:00:00",
    end_time: "15:00:00",
    docday_id: '4',
  },
])