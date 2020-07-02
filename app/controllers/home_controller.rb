class HomeController < ApplicationController

  def home
    current_user
    @books = Book.all
    @clubs = Club.all
  end

end