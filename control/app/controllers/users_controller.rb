class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @welcome, notice: 'User successfully added.'
    else
      render action: :new
    end
  end

  def show
    @user = User.find 
  end  
 

  def index
    @users = User.all
  end  
  
private
  def user_params
    params.require(:user).permit(:firstname, :lastname)
  end

end
