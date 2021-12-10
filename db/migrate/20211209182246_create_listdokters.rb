class CreateListdokters < ActiveRecord::Migration[6.1]
  def change
    create_table :listdokters do |t|
      
      t.string :nama_dokter
      t.string :spesialis
      t.string :lokasi
      t.integer :harga


      t.timestamps
    end
  end
end
