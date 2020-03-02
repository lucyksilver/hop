Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # USER RELATED ROUTES

end
