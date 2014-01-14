LiveFromNy::Application.routes.draw do
  
  devise_for :users

  root :to => "home#index"

  
  resources :users
  resources :articles
  resources :events
  resources :likes
  resources :attendances
end
