Rails.application.routes.draw do
  get 'comments/create'

  root to: 'pages#home'

  resources :projects, only: [:index, :show]
  resources :blogs, only: [:index, :show] do
    resources :comments, only: [:create]
  end

  get 'about' => 'pages#about', as: :about
  get 'portfolio' => 'pages#portfolio', as: :portfolio
  get 'contact' => 'pages#contact', as: :contact

  get 'oauth/callback' => 'oauths#callback'
  get 'oauth/:provider' => 'oauths#oauth', as: :auth_at_provider
  get 'logout' => 'oauths#signout', as: :logout_user

  resources :admin, only: :index

  namespace :admin do
    resources :blogs
    resources :projects
  end
end
