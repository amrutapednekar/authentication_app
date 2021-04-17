Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  #get "/new", to: "users#new"
  post "/login", to: "users#login"
  #get "users/show", to: "users#show"
  get "/logout", to: "users#logout"
end
