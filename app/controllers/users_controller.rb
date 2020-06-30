class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    #renders users/show view
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    #renders users/new view
  end

  def create
    #doesn't render anything
    user = User.create(user_params)
    redirect_to root_path
  end

  ### if we have time, we can implement user changes to their name/username
  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])
  #   @user.update(user_params)
  #   redirect_to user_path(@user)
  # end


  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
  end

end