class UserMailer < ApplicationMailer
    def reset_password(user)
        @user_data = user
        @url = "http://127.0.0.1:3000/password/reset?token=#{ @user_data.reset_password_token }"
        # @url = "https://janjidokter.herokuapp.com/password/reset?token=#{ @user_data.reset_password_token }"
        mail(to: @user_data.email, subject: 'Resetting Your Password')
    end
end
