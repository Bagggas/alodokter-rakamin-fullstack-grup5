class Pasien < ApplicationRecord
  has_secure_password

  validates :nama_depan, :nama_belakang, :email, :password, :umur, :jenis_kelamin, :no_hp, :foto, presence: true
  validates :email, :no_hp, uniqueness: true
  validates_confirmation_of :password_confirmation, message: 'should match confirmation'
  #   validates :password, confirmation: true, unless: -> { password.blank? }
  validates :umur, :no_hp, numericality: true

  #   validate email format
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  #   validate foto url format
  validates_format_of :foto, with: URI::DEFAULT_PARSER.make_regexp(['http'])
end
