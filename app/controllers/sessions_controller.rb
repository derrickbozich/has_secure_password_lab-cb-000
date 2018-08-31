class SessionsController < ApplicationController
  def create
    @user = User.find_by(:name => params[:name])
    if @user.authenticate
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def new

  end
end
