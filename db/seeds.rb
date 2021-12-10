# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pasien.create([
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

Article.create([
                            {
                              judul: 'artikel 01',
                              konten: 'konten 01',
                              penulis: 'author 01',
                              foto: 'author01/url'
                            },
                            {
                              judul: 'artikel 02',
                              konten: 'konten 02',
                              penulis: 'author 02',
                              foto: 'author02/url'
                            },
                            {
                              judul: 'artikel 03',
                              konten: 'konten 03',
                              penulis: 'author 03',
                              foto: 'author03/url'
                            },
                            {
                              judul: 'artikel 04',
                              konten: 'konten 04',
                              penulis: 'author 04',
                              foto: 'author04/url'
                            },
                            {
                              judul: 'artikel 05',
                              konten: 'konten 05',
                              penulis: 'author 05',
                              foto: 'author05/url'
                            }
                          ])

<<<<<<< HEAD
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

=======
Doctor.create([
  {
    nama: 'Lamoli',
    about: 'Mollit occaecat dolor non amet nulla consequat ea culpa.',
    spesialis: 'Bidan',
    harga_konsul: 1000000,
    rating: 10,
    jumlah_pasien: 100,
    jumlah_pengalaman: 17,
    lokasi: 'solo',
    edukasi: 'pendidikan',
    fakultas: 'teknik',
    jurusan: 'Laws',
  },
  {
    nama: 'Lamoli',
    about: 'Mollit occaecat dolor non amet nulla consequat ea culpa.',
    spesialis: 'Bidan',
    harga_konsul: 1000000,
    rating: 10,
    jumlah_pasien: 100,
    jumlah_pengalaman: 17,
    lokasi: 'solo',
    edukasi: 'pendidikan',
    fakultas: 'teknik',
    jurusan: 'Laws',
  },
  {
    nama: 'sulis',
    about: 'Mollit occaecat dolor non amet nulla consequat ea culpa.',
    spesialis: 'peranakan',
    harga_konsul: 1000000,
    rating: 10,
    jumlah_pasien: 100,
    jumlah_pengalaman: 17,
    lokasi: 'solo',
    edukasi: 'pendidikan',
    fakultas: 'teknik',
    jurusan: 'Laws',
  },
  {
    nama: 'loro',
    about: 'Mollit occaecat dolor non amet nulla consequat ea culpa.',
    spesialis: 'tht',
    harga_konsul: 1000000,
    rating: 10,
    jumlah_pasien: 100,
    jumlah_pengalaman: 17,
    lokasi: 'solo',
    edukasi: 'pendidikan',
    fakultas: 'teknik',
    jurusan: 'Laws',
  },
>>>>>>> ecb0106e90c47669852edd1722db0ea8bddbe34f
])
