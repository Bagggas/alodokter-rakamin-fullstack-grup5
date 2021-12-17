class CreateDocdays < ActiveRecord::Migration[6.1]
  def change
    create_table :docdays do |t|
      t.string :hari
      t.date :tanggal
      t.references :doctor, null: false, foreign_key: true
    end
  end
end
