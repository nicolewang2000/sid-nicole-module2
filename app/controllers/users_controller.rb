class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
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
  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else 
      flash[:errors]= @user.errors.full_messages
      render :edit
    end
  end


  private

  def find_user
    @user = User.find(params[:id])
  end 

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation, :profile_pic)
  end

end