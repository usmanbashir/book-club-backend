Rails.application.routes.draw do

  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get '/current_user', to: 'current_user#index'

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  patch "/current_user", to: "current_user#update"
  get "/users", to: "current_user#show"
  
  get "/books", to: "books#index"
  get "books/:id", to: "books#show", as: :book
  post "books", to: "books#create"
  patch "books/:id", to: "books#update"
  delete "books/:id", to: "books#destroy"
  
  get "/reviews", to: "reviews#index"
  get "reviews/:id", to: "reviews#show"
  post "reviews", to: "reviews#create"
  delete "books/:id", to: "reviews#destroy"
end
