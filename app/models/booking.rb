class Booking < ApplicationRecord
  belongs_to :doctor
  belongs_to :pasien

end
