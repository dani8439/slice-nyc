Rails.application.routes.draw do

  resources :restaurants
  resources :restaurant_categories
  resources :pie_restaurants
  resources :pie_toppings
  resources :pie_cheeses
  resources :categories
  resources :cheeses, only: [:index]
  resources :crusts, only: [:index]
  resources :pies
  resources :pie_ratings
  resources :sauces, only: [:index]
  resources :toppings, only: [:index]

  # resources :restaurants do
  #   resources :restaurant_ratings
  # end

  resources :restaurant_ratings do
    resources :pie_ratings 
  end


  resources :users, only: [:create, :show]

  get '/signup', :to => 'users#new'
  get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create'
  get '/auth/facebook/callback', :to => 'sessions#create'
  delete '/logout', :to => 'sessions#destroy'

  root 'welcome#index'
end
