class Schedule < ApplicationRecord
    belongs_to :doctors
    belongs_to :pasiens
    
    validates :id_pasien, :id_dokter, :schedule, :profile_pasien, :nik, :address, presence: true
end
