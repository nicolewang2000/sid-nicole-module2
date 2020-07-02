class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/login'
    else 
      flash[:errors]= @user.errors.full_messages
    render :new
    end
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
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation, :profile_pic)
  end

end