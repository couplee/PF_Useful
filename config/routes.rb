Rails.application.routes.draw do
  get 'bookmarks/index'
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
  delete 'products/delete_image/:id' => 'products#destroy_photo', as: 'photo_destroy'
  get 'bookmarks' => 'bookmarks#index'
end
