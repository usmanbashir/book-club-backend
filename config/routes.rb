Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "users", to: "users#index"
  get "users/:id", to: "users#show", as: :user
  get "books", to: "books#index"
  get "books/:id", to: "books#show", as: :book

  post "users", to: "users#create"
  post "books", to: "books#create"

  patch "users/:id", to: "users#update"
  patch "books/:id", to: "books#update"

  delete "users/:id", to: "users#destroy"
  delete "books/:id", to: "books#destroy"
end
