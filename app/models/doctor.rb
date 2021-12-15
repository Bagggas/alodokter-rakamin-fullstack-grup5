class Doctor < ApplicationRecord
    has_many :schedule
    has_many :docday
    has_many :doctor_availability
end
