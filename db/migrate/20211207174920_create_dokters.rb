class CreateDokters < ActiveRecord::Migration[6.1]
  def change
    create_table :dokters do |t|
      t.string :nama_dokter
      t.string :spesialis
      t.integer :harga
      t.integer :jumlah_pasien
      t.string :jumlah_experience
      t.integer :rating
      t.string :about_dokter
      t.string :lokasi
      t.string :edukasi


      t.timestamps
    end
  end
end
