Rails.application.routes.draw do

  resources :categories
  resources :cheeses
  resources :crusts
  resources :pie_ratings
  resources :pies 
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
