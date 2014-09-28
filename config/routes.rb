Talk::Application.routes.draw do

  root to: "dashboards#show"

  resources :users, only: [] do
    resources :contacts, only: [:create]
  end

  resources :contacts, only: [] do
    resources :conversations, only: [:create]
  end

  namespace :api do
    namespace :v1 do
      resources :contacts, only: [:index]
    end
  end

end
