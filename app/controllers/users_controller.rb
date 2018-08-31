class UsersController < ApplicationController
  def new

  end

  def create
    binding.pry
    @user = User.new(:name => params[:name], :password => params[:password])

    if @user.save
      redirect_to welcome_path
    else
      redirect_to new_user_path
    end
  end

  def welcome
    render :welcome
  end
end
