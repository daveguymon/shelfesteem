class BooksController < ApplicationController
  require "google_api"

  def index
    if params[:search]
      @response =  GoogleApi.new(params[:search]).query
    end

    render :index
  end
end
