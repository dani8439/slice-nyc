Rails.application.routes.draw do

  resources :restaurant_categories
  resources :pie_restaurants
  resources :pie_toppings
  resources :pie_cheeses
  resources :categories
  resources :cheeses, only: [:index]
  resources :crusts, only: [:index]
  resources :pies
  # resources :pie_ratings
  # resources :restaurants
  resources :sauces, only: [:index]
  resources :toppings, only: [:index]
  resources :user_restaurants


  resources :restaurants do
    resources :pie_ratings, only: [:create, :show, :edit, :destroy]
  end

  resources :users, only: [:create, :show]

  get '/signup', :to => 'users#new'
  get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create'
  get '/auth/facebook/callback', :to => 'sessions#create'
  delete '/logout', :to => 'sessions#destroy'

  root 'welcome#index'
end
