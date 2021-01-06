Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: 'sessions#logged_out'
  get :logged_in, to: 'sessions#logged_in'
  
  resources :products, only: [:index, :show, :create]
  get '/product', to: 'products#search'

  get '/ingredients', to: 'ingredients#index'
  get '/ingredient', to: 'ingredients#search'
end
