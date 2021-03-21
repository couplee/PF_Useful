Rails.application.routes.draw do
  get 'bookmarks/index'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_scope :user do                                                       #ゲストユーザー実装1/4
    post '/users/guest_sign_in' => 'users/sessions#new_guest'
  end
  resources :users
  # get 'unsubscribe/:name' => 'users#unsubscribe', as: 'confirm_unsubscribe'
  put '/users/:id/withdraw' => 'users#withdraw', as: 'users_withdraw'                                                     #ユーザー論理削除2/6
  resources :products do
    resources :post_comments, only: [:create, :destroy]
    resource :likes, only: [:create, :destroy]
    resource :bookmarks, only: [:create, :destroy]
  end
  delete 'products/delete_image/:id' => 'products#destroy_photo', as: 'photo_destroy'
  get 'bookmarks' => 'homes#bookmark'
  get 'likes' => 'homes#like'
end
