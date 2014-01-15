LiveFromNy::Application.routes.draw do
  
  devise_for :users

  root :to => "home#index"

  get '/events/search' => 'events#search', as: 'events_search'

  resources :users
  resources :articles
  resources :events
  resources :likes
  resources :attendances
end
