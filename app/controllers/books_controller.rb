class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
