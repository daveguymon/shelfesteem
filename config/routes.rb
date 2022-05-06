# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :shelves
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/search", to: "searches#google_books_search"

  patch "/reshelf", to: "books#reshelf"

  root "shelves#index"
end
