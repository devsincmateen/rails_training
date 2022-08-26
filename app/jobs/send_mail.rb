class SendMail < ApplicationJob
    queue_as :default
   
    def perform(*args)
        User.find_each do |user|
          UserMailer.welcome_email(user: user)
        end
    end
  end