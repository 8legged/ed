Ed::Application.routes.draw do
  get '/dashboard', to: "users#show"
  resources :lessons do
    member do
      get 'flip'
    end
  get "static_pages/about"

#  resources :lessons, only:[:new, :index, :create, :show, :edit, :update, :destroy]
#  end
  resources :lessons
  end

  resources :users, only: [:index, :new, :create, :show]
  resource :session, only: [:new, :create, :destroy]



  root "welcome#index"
end