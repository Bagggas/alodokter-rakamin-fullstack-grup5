class Docday < ApplicationRecord
  belongs_to :doctor
  has_many :doctime
end
