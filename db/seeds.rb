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
