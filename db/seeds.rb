# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = Pasien.create([
                        {
                          nama: 'bella',
                          kabupaten_kota: 'jakarta',
                          tanggal_lahir: '01-02-1998',
                          email: 'bella@gmail.com',
                          password: 'manggo',
                          umur: 20,
                          jenis_kelamin: 'P',
                          no_hp: 123,
                          foto: 'https://127.0.0.1:3000/register-pasien'
                        },
                      ])

articles = Article.create([
                            {
                              judul: 'danny',
                              konten: 'nny',
                              penulis: 'danny@gmail.com',
                              foto: 'danny/url'
                            }
                          ])

detaildokters = Detaildokter.create([
  {
      nama_dokter:"danny",
      spesialis:"jantung",
      harga:1000,
      jumlah_pasien:30,
      jumlah_experience:3,
      rating:10,
      about_dokter:"anaknya rajin",
      lokasi:"jerman",
      edukasi:"MIT"

  },
  {
      nama_dokter:"bagas",
      spesialis:"mata",
      harga:3000,
      jumlah_pasien:40,
      jumlah_experience:5,
      rating:9,
      about_dokter:"anaknya pintar",
      lokasi:"spanyol",
      edukasi:"MIT"

  },    {
      nama_dokter:"izsa",
      spesialis:"hati",
      harga:5000,
      jumlah_pasien:35,
      jumlah_experience:9,
      rating:10,
      about_dokter:"anaknya jago",
      lokasi:"paris",
      edukasi:"MIT"

  },    {
      nama_dokter:"bella",
      spesialis:"paru - paru",
      harga:1000,
      jumlah_pasien:50,
      jumlah_experience:3,
      rating:9,
      about_dokter:"anaknya kece",
      lokasi:"belanda",
      edukasi:"MIT"

  }])

listdokters = Listdokter.create ([
  {
      nama_dokter:"danny",
      spesialis:"jantung",
      lokasi:"jerman",
      harga:1000,
  },

  {
    nama_dokter:"bagas",
    spesialis:"mata",
    lokasi:"spanyol",
    harga:3000,
  },

  {
    nama_dokter:"izsa",
    spesialis:"hati",
    lokasi:"paris",
    harga:5000,
  },

  {
    nama_dokter:"bella",
    spesialis:"paru - paru",
    lokasi:"belanda",
    harga:1000,
  }

])
