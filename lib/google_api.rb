class GoogleApi
  BASE_URL = "https://www.googleapis.com/books/v1/volumes?"
  API_PARTIAL_URL = "key=#{ENV['GOOGLE_API_KEY']}"

  def query
    request = Faraday.get(BASE_URL+@search_format+API_PARTIAL_URL)
    @request_hash = JSON.parse(request.body)
  end

  def initialize(user_search_input)
    @search_format = "q=#{user_search_input.gsub(" ", "%20")}&"
  end
end

# require "google_api"
# search = GoogleApi.new("adam grant")
# response = search.query
# response["items"].first["volumeInfo"]
