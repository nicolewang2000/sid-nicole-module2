class HomeController < ApplicationController

  def home
    current_user
    @clubs = Club.all
  end

  def analytics
    current_user
    @clubs = Club.all
    @users = User.all
    @comments = Comment.all
    @books = Book.all
  end

end