Rails.application.routes.draw do
  get 'reservations/show'
  get 'rooms/new'
  get 'rooms/show'
  get 'rooms/account'
  get 'rooms/profile'
  get 'pages/index'
  get 'pages/show'
  resources :rooms
  resources :reservations
  devise_for :users,  :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
end