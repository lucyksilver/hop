Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # USER RELATED ROUTES
resources :users, only: :show do
  # NESTED CHOICES RELATED ROUTES
end

# BEERS RELATED ROUTES
resources :beers, only: [:index, :show] do
  #LIKES RELATED ROUTES
  resources :likes, only: [:create]
  resources :choices, only: :create
  collection do

    get :random
  end
end

# CHOICES NON NESTED ROUTES
resources :choices, only: :show

# TAGS RELATED ROUTES
resources :tags, only: :index
resources :likes, only: [:destroy]

end
