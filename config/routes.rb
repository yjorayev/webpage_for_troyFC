Rails.application.routes.draw do
  #get "/home", to: "users#index"
  root 'pages#main'
  resources :users, except: [:new, :destroy]
  get "/users", to: "users#index"
  get "/register", to: "users#new"
  get '/stats', to: 'pages#stats'
  get "/aboutus", to: "pages#aboutus"
  get "/main", to: "pages#main"
  get "/contactus", to: "pages#contactus"
end
