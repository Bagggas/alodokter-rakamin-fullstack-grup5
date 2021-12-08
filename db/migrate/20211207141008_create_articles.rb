class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :judul
      t.text :konten
      t.text :penulis
      t.string :foto

      t.timestamps
    end
  end
end
