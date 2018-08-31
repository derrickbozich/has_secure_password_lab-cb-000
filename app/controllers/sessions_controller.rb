class SessionsController < ApplicationController
  def create
    @user = User.find_by(:name => params[:name])
    binding.pry
    if @user.authenticate(params[:password])
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def new

  end
end
