Rails.application.routes.draw do
  get 'abaut/new'
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'index/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#new"

  resources :users
  resources :topics

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
