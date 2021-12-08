class CreatePasiens < ActiveRecord::Migration[6.1]
  def change
    create_table :pasiens do |t|
      # t.string :nama_depan
      # t.string :nama_belakang
      t.string :nama 
      t.string :kabupaten_kota
      t.date :tanggal_lahir
      t.string :email
      t.string :password_digest
      t.integer :umur
      t.string :jenis_kelamin
      t.string :no_hp
      t.string :foto

      t.timestamps
    end

    # def null
    #   change_column :pasiens, :kabupaten_kota, :string, :null => true
    #   change_column :pasiens, :tanggal_lahir, :date, :null => true
    #   change_column :pasiens, :umur, :integer, :null => true
    #   change_column :pasiens, :jenis_kelamin, :string, :null => true
    #   change_column :pasiens, :no_hp, :integer, :null => true
    #   change_column :pasiens, :foto, :string, :null => true
    # end
  end
end
