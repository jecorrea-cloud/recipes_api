Rails.application.routes.draw do
  # resources :comments
  # resources :recipes
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post "/users", to: 'users#create'
  post "/login", to: 'users#login'
  get "/profile", to: "users#profile"

  delete "/recipes/:id", to: "recipes#destroy"
  patch "/recipes/:id", to: "recipes#update"
  post "/recipes", to: 'recipes#create'

  delete "/comments/:id", to: "comments#destroy"
  patch "/comments/:id", to: "comments#update"
  post "/comments", to: 'comments#create'
end
