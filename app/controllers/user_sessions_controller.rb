class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy unless @user_session.blank?
    flash[:notice] = "Successfully Logged Out"
    redirect_to login_url
  end
end
