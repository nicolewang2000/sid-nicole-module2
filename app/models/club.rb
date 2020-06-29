class Club < ApplicationRecord
  belongs_to :book
  has_many :club_memberships
  has_many :users, through: :club_memberships


  
  def find_membership(user_id)
    ClubMembership.find_by(user_id: user_id, club_id: self.id)
  end

  def add_user(user_id)
    user = User.find(user_id)
    self.users << user
  end

  def remove_user(user_id)
    membership = find_membership(user_id)
    membership.destroy
  end

end
