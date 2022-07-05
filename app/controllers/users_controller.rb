class UsersController < ApplicationController
  def index
  end
  
  def show
    @user = User.find(params[:id])
    @book = User.book
  end

  def edit
  end
end
