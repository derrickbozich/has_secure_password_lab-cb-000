class SessionsController < ApplicationController
  def create
    @user = User.find_by(:name => params[:user][:name])
    if @user.authenticate(params[:user][:password])
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def new

  end
end
