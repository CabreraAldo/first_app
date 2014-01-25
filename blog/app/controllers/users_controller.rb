class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    #@user = User.new(params[:users].permit(:firstname, :lastname, :email, :mobilephone, :notes))   
    #@user = user.new(user_params)
    @user = User.new(params[:user].permit(:firstname, :lastname))
    @user.save
    redirect_to @user
  end
   
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  
  private
  def user_params
    #params.require(:user).permit(:firstname, :lastname, :mobilephone, :email, :notes)
    params.require(:user).permit(:firstname, :lastname)
  end
end
