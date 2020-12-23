Rails.application.routes.draw do

  resources :users
  get '/', to: 'sessions#new'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/auth/facebook/callback', to: 'sessions#create_with_facebook'

  resources :customers do 
    resources :orders
  end

  resources :orders, only: [:index, :show, :create]

  resources :customers
end
