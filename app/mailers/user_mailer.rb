class UserMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        @url = "http://www.example.com/login"
        mail(to: @user.email, subject:"Hello there")
    end
end
