Rails.application.routes.draw do

  root "flights#index"

  get 'search', to:'flights#search'

  resources :flights
  resources :airports
  resources :bookings
end
