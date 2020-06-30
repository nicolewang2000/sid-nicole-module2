class ClubMembershipsController < ApplicationController

  def create
    #byebug
    club = Club.find(params[:club_membership][:club_id])
    # club.add_user(params[:user_id])
    ClubMembership.create(club_membership_params)
    redirect_to club_path(club)
  end

  def update
    club = Club.find(params[:club_membership][:club_id])
    membership = club.find_membership(params[:club_membership][:user_id])
    membership.destroy
    redirect_to club_path(club)
  end

  # def destroy
  #   club = Club.find(params[:club_membership][:club_id])
  #   membership = club.find_membership(params[:club_membership][:user_id])
  #   membership.destroy
  #   redirect_to club_path(club)
  # end

  private

  def club_membership_params
    params.require(:club_membership).permit(:club_id, :user_id)
  end


end