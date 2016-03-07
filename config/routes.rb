Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :users
  resources :posts
  resources :admin

  root 'posts#index'
end
