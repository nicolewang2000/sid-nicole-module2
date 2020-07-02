class Book < ApplicationRecord
  has_many :clubs
  has_many :book_genres
  has_many :genres, through: :book_genres

  def self.most_popular_genre
    genres = Book.all.map(&:genres).flatten.map(&:name)
    genres.max_by {|g| genres.count(g)} 
  end

  def genres_list
    self.genres.map(&:name).join(', ')
  end
  
end
