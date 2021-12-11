class Pasien < ApplicationRecord
  has_secure_password
  # create validation
  validates :nama, :email, :password, presence: true, on: :create
  validates :email, uniqueness: true
  validates_confirmation_of :password_confirmation, message: 'should match confirmation'
  
  # update validation
  validates :tanggal_lahir,:kabupaten_kota, :umur, :jenis_kelamin, :foto, :no_hp, presence: false, on: :update
  validates :umur, :no_hp, numericality: true, on: :update
  validates :no_hp, uniqueness: true , on: :update
  validates_format_of :foto, with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), on: :update
  
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  
  # password reset
  
  def generate_password_token!
    self.reset_password_token = generate_token
    self.reset_password_sent_at = Time.now.utc
    save!
  end
   
  def password_token_valid?
    (self.reset_password_sent_at + 4.hours) > Time.now.utc
  end
  
  def reset_password!(password)
    self.reset_password_token = nil
    self.password = password
    save!
  end
   
  private
  
  def generate_token
    SecureRandom.hex(10)
  end

end
