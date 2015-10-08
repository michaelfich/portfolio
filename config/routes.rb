Rails.application.routes.draw do

  root to: 'pages#home'

  resources :projects, only: [:index, :show]
  resources :blogs, only: [:index, :show], param: :slug do
    resources :comments, only: [:create]
  end

  get 'about' => 'pages#about', as: :about
  get 'portfolio' => 'pages#portfolio', as: :portfolio

  get 'oauth/callback' => 'oauths#callback'
  get 'oauth/:provider' => 'oauths#oauth', as: :auth_at_provider
  get 'logout' => 'oauths#signout', as: :logout_user

  resources :admin, only: :index

  namespace :admin do
    resources :blogs, param: :slug
    resources :projects
    get 'about/edit'
    post 'about/update'
  end
end
