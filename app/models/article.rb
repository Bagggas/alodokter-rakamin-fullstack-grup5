class Article < ApplicationRecord
  validates :judul, :konten, :penulis, :foto, presence: true
end
