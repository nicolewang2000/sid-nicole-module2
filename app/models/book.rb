class Book < ApplicationRecord
  has_many :clubs
  has_many :book_genres
  has_many :genres, through: :book_genres
  
end
