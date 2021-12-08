class CreatePasiens < ActiveRecord::Migration[6.1]
  def change
    create_table :pasiens do |t|
      t.string :nama_depan
      t.string :nama_belakang
      t.string :email
      t.string :password_digest
      t.integer :umur
      t.string :jenis_kelamin
      t.string :no_hp
      t.string :foto

      t.timestamps
    end
  end
end
