Rails.application.routes.draw do
  resources :admin
  resources :sends
  resources :sders

  resources :works
  resources :volts
  resources :projects do
    resources :works
    resources :sders
  end
  root 'projects#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
