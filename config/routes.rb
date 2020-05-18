Rails.application.routes.draw do
  root to:'home#top'
  get 'home/about', to:'home#about'
  devise_for :users
  resources :users,only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :books do
  	resources :favorites, only:[:create, :destroy]
  	resource :book_comments, only: [:create]
  end
  resources :book_comments, only: [ :destroy]
end
