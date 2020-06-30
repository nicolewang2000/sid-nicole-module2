class HomeController < ApplicationController

  def home
    current_user
    @clubs = Club.all
  end

end