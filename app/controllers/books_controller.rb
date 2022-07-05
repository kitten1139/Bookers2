class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path(@book.id)
  end

  def show
  end

  def edit
    
  end
  
  def update
    @book = Book.find(params[:id])
    @book.params(book_params)
    redirect_to users_path
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
