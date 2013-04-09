Hackernewsclone::Application.routes.draw do

  root :to => "posts#index"

  resources :users
  resources :posts
  resources :comments

  get "users/new"

  get "users/create"

  get "users/edit"

  get "users/index"

  get "users/destroy"

  get "users/update"

  get "comments/new"

  get "comments/create"

  get "comments/edit"

  get "comments/index"

  get "comments/destroy"

  get "comments/update"

  get "post/new"

  get "post/create"

  get "post/index"

  get "post/destroy"


end
