Ed::Application.routes.draw do
  get "welcome/index"
  get "users/new"
  get "users/show"

  root "welcome#index"
end