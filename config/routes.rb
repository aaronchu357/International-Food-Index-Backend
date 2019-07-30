Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :index, :show]
  post "/login", to: "auth#login"
  post "/signup", to: "users#create"
  get "/profile", to: "users#profile"
  
  resources :comments

  resources :national_dishes, only: [:index, :show]

  resources :locations, only: [:index, :show, :update]

  resources :ingredients, only: [:index, :show]

  resources :recipes
end
