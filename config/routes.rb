Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :payments
  resources :reservations
  resources :locations
  resources :reviews
  resources :messages
  resources :listings
  resources :users

get '/reservations/:id/confirmation_page', to: 'reservations#confirmation_page', as:'confirmation_page'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
