# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = Pasien.create([
                        {
                          nama_depan: 'bella',
                          nama_belakang: 'dwi',
                          email: 'bella@gmail.com',
                          password: 'manggo',
                          umur: 20,
                          jenis_kelamin: 'P',
                          no_hp: 81_234_567_890,
                          foto: 'bella/url'
                        },
                        {
                          nama_depan: 'izsa',
                          nama_belakang: 'zsa',
                          email: 'izsa@gmail.com',
                          password: 'pineapple',
                          umur: 24,
                          jenis_kelamin: 'P',
                          no_hp: 81_298_765_432,
                          foto: 'izsa/url'
                        },
                        {
                          nama_depan: 'bagas',
                          nama_belakang: 'gas',
                          email: 'bagas@gmail.com',
                          password: 'blueberry',
                          umur: 26,
                          jenis_kelamin: 'L',
                          no_hp: 88_901_234_567,
                          foto: 'bagas/url'
                        },
                        {
                          nama_depan: 'danny',
                          nama_belakang: 'nny',
                          email: 'danny@gmail.com',
                          password: 'peanut',
                          umur: 21,
                          jenis_kelamin: 'L',
                          no_hp: 86_785_432_467,
                          foto: 'danny/url'
                        }
                      ])

articles = Article.create([
                            {
                              judul: 'danny',
                              konten: 'nny',
                              penulis: 'danny@gmail.com',
                              foto: 'danny/url'
                            }
                          ])
