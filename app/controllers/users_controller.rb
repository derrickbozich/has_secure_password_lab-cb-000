class UsersController < ApplicationController
  def new
    @user = User.new(:name => params[:name], :password => params[:password])

    if @user.save

    else

    end
  end

  def welcome
    render :welcome
  end
end
