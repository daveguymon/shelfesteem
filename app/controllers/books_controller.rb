class BooksController < ApplicationController
  require "google_api"

  def index
    if params[:search]
      @response =  GoogleApi.new(params[:search]).query
    end

    render :index
  end

  def create
    @book = Book.new(
      {
        :title => params[:title],
        :subtitle => params[:subtitle],
        :authors => params[:authors],
        :description => params[:description],
        :page_count => params[:page_count],
        :categories => params[:categories],
        :image_link => params[:image_link]
      }
    )
    @book.save
  end

  def collection
    @books = Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :subtitle, :authors, :description, :page_count, :categories, :image_link )
  end
end
