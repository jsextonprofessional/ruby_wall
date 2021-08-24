class UsersController < ApplicationController
    
  def new

  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the wall"
      redirect_to '/messages'
    else
      redirect_to '/messages'
    end
  end

  private
  def user_params
      params.require(:user).permit(:username)
  end
end
