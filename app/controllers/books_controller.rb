class BooksController < ApplicationController
  
  before_action :find_book, only: [:show]

  def index
    @books = Book.all
  end

  def show
    #renders users/show view
  end
  
  def new
    @book = Book.new
    #renders books/new view
  end

  def create
    #doesn't render anything
    book = Book.create(book_params)
    redirect_to book_path(book)
  end

  ### if we have time, we can implement book changes to their name/bookname
  # def edit
  #   @book = Book.find(params[:id])
  # end

  # def update
  #   @book = Book.find(params[:id])
  #   @book.update(book_params)
  #   redirect_to book_path(@book)
  # end


  private

  def find_book 
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author_name, genre_ids: [])
  end

end