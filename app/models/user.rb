class User < ApplicationRecord
  has_secure_password
  has_many :club_memberships
  has_many :clubs, through: :club_memberships
  has_many :books, through: :clubs

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  def full_name
    (self.first_name + " " + self.last_name).titleize
  end
  
end
