Rails.application.routes.draw do

  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  
  get '/current_user', to: 'current_user#index'
  root "current_user#index"
  
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
  get "/users/:id", to: "current_user#show"
 
    get "/books/reviews", to: "reviews#index"
  get "/books/:id/reviews", to: "reviews#show"
  post "/books/:id/reviews", to: "reviews#create"
  delete "/books/:id/reviews/:id", to: "reviews#destroy"
  
  get "/books", to: "books#index"
  get "books/:id", to: "books#show", as: :book
  post "/books", to: "books#create"
  patch "/books/:id", to: "books#update"
  delete "/books/:id", to: "books#destroy"
  

end
