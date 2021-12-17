class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.time :start_time
      t.time :end_time
      t.string :profile_pasien
      t.string :nik
      t.date :hari
      t.text :address
      t.string :status
      t.references :doctor, null: false, foreign_key: true
      t.references :pasien, null: false, foreign_key: true

      t.timestamps
    end
  end
end
