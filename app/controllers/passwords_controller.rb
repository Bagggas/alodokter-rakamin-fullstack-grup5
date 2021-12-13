class PasswordsController < ApplicationController
    def success
      render template: "success"
    end
    
    def index
      token = params[:token]
      user = Pasien.find_by(reset_password_token: token)
      if user.present?
        @token = user.reset_password_token
        render template: "reset_page"
      else
        flash[:error_invalid] = "Link not valid or expired. Try generating a new link."
        redirect_to password_reset_path and return 
        render template: "reset_page"
      end
      # render json: {status: 'ok', data: user}, status: :ok
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
    
        if params[:token].blank?
          # return render json: {error: 'Token not present'}
          flash[:error_token] = "Token not present"
          redirect_to password_reset_path and return 
        end
    
        user = Pasien.find_by(reset_password_token: token)
    
        if user.present? && user.password_token_valid?
          if user.reset_password!(params[:password])
            flash[:success_reset] = "Your password is successfully reseted!"
            redirect_to password_reset_success_path and return 
            # render json: {status: 'ok'}, status: :ok
          else
            flash[:error_reset] = user.errors.full_messages
            redirect_to password_reset_path and return 
            # render json: {error: user.errors.full_messages}, status: :unprocessable_entity
          end
        else
          flash[:error_token_expired] = "Link not valid or expired. Try generating a new link."
          redirect_to password_reset_path and return
          # render json: {error:  ['Link not valid or expired. Try generating a new link.']}, status: :not_found
        end
      end
      
end
