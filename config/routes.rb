Rails.application.routes.draw do

  resources :restaurant_categories
  resources :pie_restaurants
  resources :pie_toppings
  resources :pie_cheeses
  resources :categories
  resources :cheeses
  resources :crusts
  resources :pies
  resources :pie_ratings
  resources :restaurants
  resources :sauces
  resources :toppings
  resources :user_restaurants




  # resources :categories do ??
  #   resources :restaurants
  # end
  resources :users, only: [:create, :show]

  get '/signup', :to => 'users#new'
  get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create'
  get '/auth/facebook/callback', :to => 'sessions#create'
  delete '/logout', :to => 'sessions#destroy'

  root 'welcome#index'
end
