Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  resources :posts, only: [:new, :create, :index]
  root "posts#index"

  devise_for :users, :controllers => {
    registrations: 'registrations'
  }
end
