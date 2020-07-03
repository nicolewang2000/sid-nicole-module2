class Book < ApplicationRecord
  has_many :clubs
  has_many :book_genres
  has_many :genres, through: :book_genres

  def self.get_book(keyword)
    Book.find_or_create_by(
        title: GoogleBooks.search(keyword).first.title, 
        author_name: GoogleBooks.search(keyword).first.authors,
        img_url: GoogleBooks.search(keyword).first.image_link
    )
  end

  def self.all_img_urls
    Book.all.map{|book| book.img_url if book.img_url}
  end

  def self.most_popular_genre
    genres = Book.all.map(&:genres).flatten.map(&:name)
    genres.max_by {|g| genres.count(g)} 
  end

  def genres_list
    self.genres.map(&:name).join(', ')
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
