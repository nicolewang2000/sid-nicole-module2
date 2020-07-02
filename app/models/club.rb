class Club < ApplicationRecord
  belongs_to :book
  has_many :club_memberships
  has_many :users, through: :club_memberships
  belongs_to :leader, :class_name => "User"
  accepts_nested_attributes_for :book
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  # validates :book_id, presence: true
  # validates :leader_id, presence: true

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
