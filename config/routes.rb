Rails.application.routes.draw do
  resources :clubs do 
    resources :events
  end
  resources :events
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root 'main#welcome'
  get 'main/calendar'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  get '/users/auth/google_oauth2'
  get '/users/auth/google_oauth2/callback'
  # Defines the root path route ("/")
  # root "articles#index"
end
