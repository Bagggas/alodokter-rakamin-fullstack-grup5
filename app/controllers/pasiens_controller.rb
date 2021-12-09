class PasiensController < ApplicationController
  before_action :authorized, only: %i[auto_login update]

  def index
    pasiens = Pasien.all
    render json: pasiens, status: :ok
  end

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
      render json: { user:{
        id: @user.id,
        email: @user.email,
        password: @user.password
      }, token: token }
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
      session[:current_user_id] = @user.id
      
      render json: { user: @user, token: token,  
        session_id: session[:current_user_id]}
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

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:nama, :email, :password,
                  :password_confirmation)
  end

  def update_params
    params.permit(:id, :nama, :email, :password, :umur, :jenis_kelamin, :no_hp, :foto,
                  :password_confirmation, :tanggal_lahir, :kabupaten_kota)
  end
end
