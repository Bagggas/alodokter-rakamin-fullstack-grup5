class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :id_pasien
      t.integer :id_dokter
      t.datetime :schedule
      t.datetime :end_schedule
      t.string :profile_pasien
      t.string :nik
      t.text :address
      t.string :status

      t.timestamps
    end
  end
end
