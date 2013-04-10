Hackernewsclone::Application.routes.draw do

  root :to => "posts#index"

  resources :users, :only => [ :create, :new ]
  resources :posts, :only => [:index, :create, :new ]
  resources :posts do
    resources :comments, :only => [:index , :create, :new, :show]
  end

  resources :comments, :except => [:create]
  resource :session, :only => [:create, :destroy, :new]


end
