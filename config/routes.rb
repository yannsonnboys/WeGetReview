Rails.application.routes.draw do
  resources :reviews, except: [:show, :index]
  devise_for :users
	# Library
  resources :companies
  resources :restaurants

  # Get the About & Contact pages
  get 'pages/about'
  get 'pages/contact'

  # Go to the home page
  root 'companies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
