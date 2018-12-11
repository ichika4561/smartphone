Rails.application.routes.draw do
  get'/login',to: 'sessions#new'
  post'/login',to: 'sessions#create'
 root to: 'posts#index'
 resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
