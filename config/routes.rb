Rails.application.routes.draw do
  resources :shelves
  resources :books, :only => [:index, :show, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/search', :to => "searches#google_books_search"
  # Defines the root path route ("/")
  root "shelves#index"
end
