class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @books = @user.books.all
    @book = Book.new
  end

  def index
    @users = User.all
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end


end
