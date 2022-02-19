Rails.application.routes.draw do
  get 'users/index'
  get 'creators/index'
  root "articles#index"
  # root "creators#index"
  # get "/creators", to: "creators#index"

  get "/articles", to: "articles#index"

  resources :articles do
    resources :comments
  end

  resources :creators do
    resources :users
  end

  resources :users

end
