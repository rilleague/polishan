Rails.application.routes.draw do
  get 'posts/new'
  devise_for :users
  root to: 'homes#index'
  resources :users, only: [:edit, :update]
end
