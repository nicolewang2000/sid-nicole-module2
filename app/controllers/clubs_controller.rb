require 'googlebooks'

class ClubsController < ApplicationController
    
    before_action :find_club, only: [:show, :edit, :update, :destroy]
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
      @club = Club.new(name: club_params[:name], description:club_params[:description], leader_id: club_params[:leader_id])
      book = club_params[:book_attributes][:title]
      @club.book = Book.find_or_create(book)
      if @club.save   
        @club.add_user(session[:user_id])
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
      @club.users.each do |user|
        @club.remove_user(user.id)
      end 
      @club = Club.find(params[:id])
      @club.destroy
      redirect_to '/'
    end

    private 

    def club_params
      params.require(:club).permit(:name, :description, :leader_id, book_attributes: [:title, :author_name, :img_url])
    end

    def find_club
      @club = Club.find(params[:id])
    end
end 