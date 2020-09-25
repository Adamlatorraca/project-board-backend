Rails.application.routes.draw do

  resources :users
  #fetch localhost:3000/api/v1/whatever

  namespace :api do
    namespace :v1 do
      resources :projects
      resources :comments
      resources :accounts
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
