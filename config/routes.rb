LiveFromNy::Application.routes.draw do
  
  devise_for :users

  root :to => "home#index"

  resources :users, only: [:show]
  resources :articles, except: [:new, :edit, :update, :show]
  resources :likes
end
