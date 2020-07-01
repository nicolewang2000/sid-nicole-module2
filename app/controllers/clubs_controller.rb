class ClubsController < ApplicationController
    
    before_action :find_club, only: [:show, :edit, :update, :delete]
    before_action :authenticated, only: [:new, :create, :edit, :update, :destroy]

    def index
      if logged_in?
        @user = User.find(session[:user_id])
      end
        @clubs = Club.all
    end 

    def show
      @club = find_club
      if logged_in?
        @user = User.find(session[:user_id])

        if @club.find_membership(@user.id)
          @membership = @club.find_membership(@user.id)
        else
          @membership = ClubMembership.new
        end
      end
    end
    
    def new
      @club = Club.new
      @club.build_book
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

    def destroy
    end

    private 

    def club_params
      params.require(:club).permit(:name, :description, :leader_id, book_attributes: [:title, :author_name, :img_url])
    end

    def find_club
      @club = Club.find(params[:id])
    end
end 