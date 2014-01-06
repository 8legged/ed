Ed::Application.routes.draw do
  get "static_pages/about"
  resources :lessons, only:[:new, :index, :create, :show, :edit, :update, :destroy]
  resources :lessons do
    member do
      get 'flip'
    end
  end
  resources :users, only: [:index, :new, :create, :show]
  resource :session, only: [:new, :create, :destroy]


  get '/dashboard', to: "dashboard#index"
  root "welcome#index"
end