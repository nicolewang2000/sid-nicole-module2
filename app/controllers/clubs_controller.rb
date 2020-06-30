class ClubsController < ApplicationController
    
    before_action :find_club, only: [:show, :edit, :update, :delete]
    before_action :authenticated, only: [:new, :create, :edit, :update, :destroy]

    def index
        @clubs = Club.all
    end 

    def show
      @club = find_club
    end
    
    def new
      @club = Club.new
    end

    def edit
    end

    def create
      @club = Club.new(club_params)
      if @club.save
        redirect_to club_path(@club)
      else
        render :new
      end
    end
    
    def update
        if @club.update(club_params)
            redirect_to club_path(@club)
        else 
            render :edit
        end 
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