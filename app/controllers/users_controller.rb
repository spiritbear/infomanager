class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def login
    render :text => "Login Action Called"
  end
  
  def logout
    render :text => "Logout Action Called"
  end
end
