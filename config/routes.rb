Rails.application.routes.draw do
  get 'home/about'
  root 'home#top'
  #get 'users/show'

  devise_for :users


  resources :books, only: [:new, :create, :index, :edit, :update, :show, :destroy]
  resources :users, only: [:index, :edit, :show, :update]
end
