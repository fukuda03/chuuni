Rails.application.routes.draw do
  get 'mypages/index'
  get 'about/new'
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'top/new'
  get 'topics/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#new"

  resources :users
  resources :topics

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
