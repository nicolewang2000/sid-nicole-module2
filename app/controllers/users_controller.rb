class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    #renders users/show view
  end

  def new
    @user = User.new
    #renders users/new view
  end

  def create
    #doesn't render anything
    user = User.create(user_params)
    redirect_to user_path(user)
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

  def find_user
    @user = User.find(session[:user_id])
  end 
end