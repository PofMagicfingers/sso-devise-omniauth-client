OauthClientDemo::Application.routes.draw do
  root :to => 'home#index'

  # omniauth
  match '/auth/:provider/callback', :to => 'user_sessions#create', :via => [:get, :post]
  match '/auth/failure', :to => 'user_sessions#failure', :via => [:get, :post]

  # Custom logout
  get '/logout', :to => 'user_sessions#destroy'
end
