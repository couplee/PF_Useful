Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_scope :user do                                                                                              # ゲストユーザー実装1/4
    post '/users/guest_sign_in' => 'users/sessions#new_guest'
  end
  resources :users
  get '/users/:id/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'                                                     # 論理削除でユーザー退会3/17(確認画面)
  patch '/users/:id/withdraw' => 'users#withdraw', as: 'users_withdraw'                                                      # 論理削除でユーザー退会4/17(退会処理)
  resources :products do
    resources :post_comments, only: %i[create destroy]
    resource :likes, only: %i[create destroy]
    resource :bookmarks, only: %i[create destroy]
  end
  delete 'products/delete_image/:id' => 'products#destroy_photo', as: 'photo_destroy'
  get 'bookmarks' => 'homes#bookmark'
  get 'likes' => 'homes#like'
end
