Rails.application.routes.draw do
  get 'users/new'

  root to: 'pages#home'

  get '/login' => 'accounts#login', as: 'login'
  get '/logout' => 'sessions#logout', as: 'logout'
  get '/signup' => 'users#new', as: 'signup'
end
