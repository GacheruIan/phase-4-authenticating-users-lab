Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #login
  post '/login', to: "sessions#create"
  #route for user stay logged in
  get '/me', to: "users#show"
  #logout
  delete "/logout", to: "sessions#destroy"



end
