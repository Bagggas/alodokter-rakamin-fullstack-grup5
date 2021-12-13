class Schedule < ApplicationRecord
    validates :id_pasien, :id_dokter, :schedule, :profile_pasien, :nik, :address, presence: true
end
