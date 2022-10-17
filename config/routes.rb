Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # resources :users, only: [:show]
  get '/me', to: "users#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
