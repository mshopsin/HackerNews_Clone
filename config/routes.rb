Hackernewsclone::Application.routes.draw do

  root :to => "posts#index"

  resources :users, :only => [ :create, :new, :show ]
  resources :posts, :only => [:index, :create, :new ] do
    resources :comments, :only => [:index , :create, :new, :show]
  end

  post 'comments/reply' => 'comments#reply'

  resources :comments, :except => [:create, :edit]
  resource :session, :only => [:create, :destroy, :new]
  resources :upvotes , :only => [ :create, :new ]


end
