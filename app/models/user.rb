class User < ApplicationRecord
  # has_secure_password  
  has_many :club_memberships
  has_many :clubs, through: :club_memberships
  has_many :books, through: :clubs
  # has_many :clubs, :foreign_key => 'leader_id'

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  def full_name
    (self.first_name + " " + self.last_name).titleize
  end
  
  def leads
    Club.all.select{|club|club.leader_id == self.id}  #returns an array of clubs in which a user leads (is a leader)
  end

  def leads_name
    leads.map{|club|club.name} #returns an array of club names in which a user leads
  end


end
