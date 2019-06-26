Rails.application.routes.draw do


  resources :restaurant_categories, only: [:index]
  resources :pie_restaurants, only: [:index]
  resources :pie_toppings, only: [:index]
  resources :pie_cheeses, only: [:index]
  resources :categories, only: [:index, :new, :show]
  resources :cheeses, only: [:index, :new, :show]
  resources :crusts, only: [:index, :new, :show]
  resources :pies
  resources :sauces, only: [:index, :new, :show]
  resources :toppings, only: [:index, :new, :show]
  resources :restaurant_ratings, only: [:index]

  resources :restaurants, only: [:new, :index, :edit, :create, :show, :update] do
    resources :restaurant_ratings, only: [:new, :create, :edit, :update, :destroy, :show]
  end


  resources :users, only: [:create, :show]

  get '/signup', :to => 'users#new'
  get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create'
  get '/auth/facebook/callback', :to => 'sessions#create'
  delete '/logout', :to => 'sessions#destroy'

  root 'welcome#index'

  get '*path', to: 'welcome#index' #redirect's home for non-existing routes.
end
