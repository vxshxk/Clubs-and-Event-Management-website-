Rails.application.routes.draw do
  resources :clubs
  devise_for :users
  root 'main#welcome'
  get 'main/clubs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
