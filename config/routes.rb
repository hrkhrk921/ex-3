Rails.application.routes.draw do
  root to:'home#top'
  get 'home/about', to:'home#about'
  devise_for :users
  resources :books,only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users
end 
