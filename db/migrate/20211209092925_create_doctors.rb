class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :nama
      t.text   :about
      t.string :spesialis
      t.bigint :harga_konsul
      t.integer :rating
      t.integer :jumlah_pasien
      t.integer :jumlah_pengalaman
      t.string :rumah_sakit
      t.string :lokasi
      t.string :alamat
      t.string :edukasi
      t.string :fakultas
      t.string :jurusan
      t.string :foto

      t.timestamps
    end
  end
end
