class ClubsController < ApplicationController
    
    before_action :find_club, only: [:show, :edit, :update, :delete]

    def index
        @clubs = Club.all
    end 

    def show
    end
    
    def new
      @club = Club.new
    end

    def create
      Club.create(club_params)
    end

    def edit
    end
    
    def update
        @club.update(club_params)
        redirect_to club_path(@club)
    end

    def delete
    end

    private 
    def club_params
        params.require(:club).permit(:name, :description, :book_id)
    end

    def find_club
        Club.find(params[:id])
    end
end 