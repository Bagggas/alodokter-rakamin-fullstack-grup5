class PasswordsController < ApplicationController

    def index(token)
      token = params[:token]
      user = Pasien.find_by(reset_password_token: token)
      render json: {status: 'ok', data: user}, status: :ok
    end

    def forgot
        if params[:email].blank? # check if email is present
          return render json: {error: 'Email not present'}
        end
    
        user = Pasien.find_by(email: params[:email]) # if present find user by email
        
        if user.present?
          user.generate_password_token!#generate pass token
          # SEND EMAIL HERE
          UserMailer.reset_password(user).deliver_now
          render json: {message:'A link to reset your password has been sent to your email address',status: 'ok'}, status: :ok
        else
          render json: {error: ['Email address not found. Please check and try again.']}, status: :not_found
        end
      end
    
      def reset
        token = params[:token].to_s
    
        if params[:email].blank?
          return render json: {error: 'Token not present'}
        end
    
        user = Pasien.find_by(reset_password_token: token)
    
        if user.present? && user.password_token_valid?
          if user.reset_password!(params[:password])
            render json: {status: 'ok'}, status: :ok
          else
            render json: {error: user.errors.full_messages}, status: :unprocessable_entity
          end
        else
          render json: {error:  ['Link not valid or expired. Try generating a new link.']}, status: :not_found
        end
      end

end
