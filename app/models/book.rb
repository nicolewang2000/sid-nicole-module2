class Book < ApplicationRecord
  has_many :clubs
  has_many :book_genres
  has_many :genres, through: :book_genres

  def self.get_book_image(keyword)
    Book.find_or_create_by(
        title: GoogleBooks.search(keyword).first.title, 
        author_name: GoogleBooks.search(keyword).first.authors,
        img_url: GoogleBooks.search(keyword).first.image_link
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
