class UsersController < ApplicationController
  def create
     @user = User.new
  end
end
