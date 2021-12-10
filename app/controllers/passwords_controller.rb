class PasswordsController < ApplicationController
    def forgot
        if params[:email].blank?
            return render json: { message: 'Email not present'}, status: 406
        end

        user = Pasien.find_by(email: params[:email])

        if user.present?
            user.generate_password_token! #generate pass token
            # SEND EMAIL HERE
            render json: { status: 'ok', token: user.reset_password_token}, status: :ok
          else
            return render json: { error: ['Email address not found. Please check and try again.']}, status: 406
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
