class CreateDoctimes < ActiveRecord::Migration[6.1]
  def change
    create_table :doctimes do |t|
      t.string :jam
      t.references :docday, null: false, foreign_key: true
    end
  end
end
