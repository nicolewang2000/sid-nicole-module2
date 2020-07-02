class User < ApplicationRecord
  has_secure_password  
  has_many :club_memberships
  has_many :clubs, through: :club_memberships
  has_many :books, through: :clubs
  has_many :lead_clubs, :class_name => "Club", foreign_key: 'leader_id'
  has_many :comments

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  def full_name
    (self.first_name + " " + self.last_name).titleize
  end
  
  def leads
    Club.all.select{|club|club.leader_id == self.id}
  end

  def lead_names
    lead_clubs.map{|club|club.name} 
  end


end
