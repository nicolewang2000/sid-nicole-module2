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
  

  def self.find_or_create(book)
    Book.find_or_create_by(
        title: GoogleBooks.search(book).first.title, 
        author_name: GoogleBooks.search(book).first.authors,
        img_url: GoogleBooks.search(book).first.image_link
    )
  end

  # def book_hash

  #   Google.search(keyword)
  # end

  # def self.find_or_create(keyword)
  #   book = Book.find_or_create_by(
  #     title: Google.title(keyword), 
  #     author_name: Google.author(keyword), 
  #     img_url: Google.image(keyword)
  #   )
  # end

end
