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

  def number_of_users
    self.users.count
  end

  def self.avg_num_of_users
    Club.all.map{|club| club.number_of_users}.sum / Club.all.count
  end

  def self.num_of_leaders
    Club.all.map{|club| club.leader_id}.uniq.length
  end

  def self.largest_club
    Club.all.sort_by{|club| club.users.length}.last
  end

  def self.largest_club_count
    Club.largest_club.users.count
  end

end
