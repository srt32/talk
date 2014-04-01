Talk::Application.routes.draw do

  root to: "dashboards#show"

  resources :users, only: [] do
    resources :contacts, only: [:create]
  end

end
