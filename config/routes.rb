Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  get 'posts/beautypage' => 'posts#beautypage'
  get 'posts/troublepage' => 'posts#troublepage'
  resources :users, only: [:edit, :update] 
  resources :posts, only: [:new, :create] 
end
