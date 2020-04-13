Rails.application.routes.draw do
  resources :payments
  resources :reservations
  resources :locations
  resources :reviews
  resources :messages
  resources :listings
  resources :users

  # get '/' 'listings#index' as homepage
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
