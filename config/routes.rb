Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/users/:id', to: 'user#show', as: "user"
  resources :users, only: [:show, :new, :create]
  resources :journals, only: [:show, :index, :new, :create, :destroy]
  resources :goals

  get "/login", to: "users#login", as: "login"
  post "/handle_login", to: "users#handle_login"

  get '/appointments/new', to: 'appointments#new', as: 'new_appointment'
  post '/appointments', to: 'appointments#create', as: 'create_appointment'
  get "/appointments", to: "appointments#index", as: "appointments"
  get "/appointments/:id", to: "appointments#show", as: "appointment"
  delete "/appointments/:id", to: "appointments#destroy"
  get '/appointments/:id/edit', to: 'appointments#edit', as: 'edit_appointment'
  patch '/appointments/:id', to: 'appointments#update'

end
