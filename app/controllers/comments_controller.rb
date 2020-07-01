class CommentsController < ApplicationController

	def create
		@club = Club.find(params[:club_id])
	 	@comment = @club.comments.create(params[:comment].permit(:user_id, :content))
		redirect_to club_path(@club)	
	end

	def destroy 
		@club = Club.find(params[:club_id])
		@comment = @club.comments.find(params[:id])
		@comment.destroy
		redirect_to club_path(@club)
    end
    
end