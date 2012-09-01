class SignupsController < ApplicationController
  def create
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      UserMailer.signup_confirmation(user).deliver
      redirect_to root_url
    end
end
