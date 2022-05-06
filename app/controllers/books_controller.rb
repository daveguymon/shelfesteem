# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy reshelf]
  after_action :add_to_shelf, only: %i[create]
  # GET /books
  def index
    @books = Book.all
  end

  # GET /books/1
  def show; end

  # POST /books
  def create
    @book = Book.new(book_params)

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
      format.html { redirect_to root_url, notice: "Book was successfully destroyed." }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    permitted_params = params.require(:book).permit(:title, :subtitle, :description, :page_count,
                                                    authors: params["book"]["authors"].keys, categories: params["book"]["categories"].keys, image_links: params["book"]["image_links"].keys)
  end

  def add_to_shelf
    @shelf = Shelf.find(params[:shelf])
    @shelf.books << @book
  end
end
