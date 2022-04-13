class BooksController < ApplicationController
  before_action :get_book, :only => %i[ show edit update destroy reshelf]
  after_action :add_to_shelf, :only => %i[ create ]
  # GET /books
  def index
    @books = Book.all
  end

  # GET /books/1
  def show
  end

  # POST /books
  def create
    p params[:book]
    @book = Book.new({
      :title => params[:book][:title],
      :subtitle => params[:book][:subtitle],
      :authors => params[:book][:authors],
      :description => params[:book][:description],
      :page_count => params[:book][:page_count],
      :categories => params[:book][:categories],
      :image_link => params[:book][:image_link]
    })

    respond_to do |format|
      if @book.save
        format.html { redirect_to shelves_path, notice: "Book was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH /books/1
  def reshelf
    shelf = Shelf.find(@book.shelves.first.id)
    @book.shelves.delete(shelf)

    @book.shelves << Shelf.find(params[:book][:shelf])
    redirect_to shelves_path
  end

  # DELETE /books/1
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
    end
  end

  private
    def get_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :subtitle, :authors, :description, :page_count, :categories, :image_link)
    end

    def add_to_shelf
      @shelf = Shelf.find(params[:shelf])
      @shelf.books << @book
    end
end
