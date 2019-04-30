Rails.application.routes.draw do
  get 'comments/new'
  get 'contact/new'
  get 'news/new'
  get 'about/new'
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'top/new'
  get 'topics/show'
  get 'users/show'
  get 'users/edit'
  get '/post/hashtag/:name', to: 'topics#hashtag'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#new"

  resources :users
  resources :topics
  resources :comments

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
