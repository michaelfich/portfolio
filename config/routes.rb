Rails.application.routes.draw do
  root to: 'pages#home'

  get "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", as: :auth_at_provider
end
