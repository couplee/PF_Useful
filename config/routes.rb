Rails.application.routes.draw do
  devise_for :users, controller: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_scope :user do
    post '/users/guest_sign_in' => 'users/sessions#new_guest'
  end
  resources :users
end
