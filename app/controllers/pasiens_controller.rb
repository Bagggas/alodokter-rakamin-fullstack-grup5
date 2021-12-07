class PasiensController < ApplicationController
  before_action :authorized, only: [:auto_login]

  def show
    pasiens = Pasien.all
    render json: pasiens, status: :ok
  end

  # REGISTER
  def create
    @user = Pasien.create(user_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: {
        error: 'Email or Password is Invalid'
      }, status: :bad_request
    end
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

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:nama_depan, :nama_belakang, :email, :password, :umur, :jenis_kelamin, :no_hp, :foto)
  end
end
