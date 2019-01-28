Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'home/index'
  namespace :admin do
  resources :users
  end
  get'/login',to: 'sessions#new'
  post'/login',to: 'sessions#create'
  delete'/logout',to: 'sessions#destroy'
  root to: 'top#show'

  # get 'top/show'
  #ログイン後にはsessions#new
  #root to: 'posts#index'
  #↑トップ画面に行ったら自動的に投稿一覧に飛ぶ設定。
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end