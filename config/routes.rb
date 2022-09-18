Rails.application.routes.draw do
  resources :comments
  resources :profiles
  resources :articles
  root 'pages#home'
  resources :tag_articles
  resources :tags
  devise_for :users
end