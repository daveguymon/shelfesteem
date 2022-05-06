# frozen_string_literal: true

class SearchesController < ApplicationController
  require "google_api"

  def google_books_search
    @response = GoogleApi.new(params[:search]).query
  end
end
