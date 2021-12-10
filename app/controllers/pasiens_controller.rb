class PasiensController < ApplicationController
  before_action :authorized, only: %i[auto_login update]

  def show
    pasiens = Pasien.all
    render json: pasiens, status: :ok
  end

  # REGISTER
  def create
    # unless existing_user

    @user = Pasien.new(user_params)

    if @user.valid?
      @user.save
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { message: 'Failed to register new user', errors: @user.errors }, status: 406
    end
    # end
  end

  # LOGGING IN
  def login
    @user = Pasien.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: {
        error: 'Email or Password is Invalid'
      }, status: :bad_request
    end
  end

  # UPDATE PROFILE
  def update
    @user = Pasien.find(params[:id])

    @user.update(update_params)

    if @user.valid?
      render json: { user: @user }, status: :ok
    else
      render json: { message: 'Failed to update', errors: @user.errors }, status: 406
    end
  end

  # # CHECK IF USER EXIST OR NOT
  # def existing_user
  #   @user = Pasien.find_by(email: params[:email])

  #   if @user
  #     render json: { message: 'Email already used for another account.' }
  #   else
  #     check_phone_number
  #   end
  # end

  # # CHECK IF PHONE NUMBER HAS BEEN USED
  # def check_phone_number
  #   @user = Pasien.find_by(no_hp: params[:no_hp])

  #   if @user
  #     render json: { message: 'Phone number has been used in another account. Please try another number' }
  #   else
  #     check_password_match
  #   end
  # end

  # # CHECK IF PASSWORD MATCH WITH CONFIRM PASSWORD
  # def check_password_match
  #   render json: { message: "Password didn't match" } unless params[:password] == params[:confirm_password]
  # end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:nama_depan, :nama_belakang, :email, :password, :umur, :jenis_kelamin, :no_hp, :foto,
                  :password_confirmation)
  end

  def update_params
    params.permit(:id, :nama_depan, :nama_belakang, :email, :password, :umur, :jenis_kelamin, :no_hp, :foto,
                  :password_confirmation)
  end
end
