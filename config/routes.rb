Rails.application.routes.draw do
  #get "/home", to: "users#index"
  root 'pages#main'
  resources :users, except: [:new, :destroy]
  get "/users", to: "users#index"
  get "/addawanker", to: "users#new"
  get '/stats', to: 'pages#stats'
  get "/calendar", to: "pages#calendar"
  get "/main", to: "pages#main"
  get "/contactus", to: "pages#contactus"
end
