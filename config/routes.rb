Rails.application.routes.draw do
  root to: 'pages#home'

  resources :projects, only: [:index, :show], param: :slug
  resources :blogs, only: [:index, :show], param: :slug do
    resources :comments, only: [:create]
  end

  get 'about' => 'pages#about', as: :about
  get 'portfolio' => 'pages#portfolio', as: :portfolio
  get 'resources' => 'pages#resources', as: :resources

  get 'oauth/callback' => 'oauths#callback'
  get 'oauth/:provider' => 'oauths#oauth', as: :auth_at_provider
  get 'logout' => 'oauths#signout', as: :logout_user

  resources :admin, only: :index

  namespace :admin do
    resources :users, param: :login, only: [:index, :show]
    resources :resource, param: :slug
    resources :blogs, param: :slug
    resources :projects, param: :slug
    resources :comments, except: [:new, :create]
    get 'about/edit'
    patch 'about/update'
  end
end
