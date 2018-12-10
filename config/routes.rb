Rails.application.routes.draw do
  get'/login',to: 'sesstions#new'
  post'/login',to: 'sesstions#create'
 root to: 'posts#index'
 resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
