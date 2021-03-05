Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_scope :user do       #ゲストユーザー実装1/4
    post '/users/guest_sign_in' => 'users/sessions#new_guest'
  end
  resources :users
  resources :products do
    resources :post_comments, only: [:create, :destroy]
    resource :likes, only: [:create, :destroy]
  end
end
