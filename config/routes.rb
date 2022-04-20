Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users
  resources :shelves
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/search', :to => "searches#google_books_search"

  patch '/reshelf', :to => "books#reshelf"
  # Defines the root path route ("/")
  root "shelves#index"
end
