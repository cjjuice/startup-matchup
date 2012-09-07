class UserMailer < ActionMailer::Base
  default from: "no-reply@startupmatchup.org"

 
  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Welcome to Startup Matchup!"
  end
  
end
