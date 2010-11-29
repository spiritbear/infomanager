class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.create(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully Logged In."
      redirect_to dashboard_url
    else
      flash[:error] = "The credentials you provided were invalid"
      redirect_to login_url
    end
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy unless @user_session.blank?
    flash[:notice] = "Successfully Logged Out"
    redirect_to login_url
  end
end
