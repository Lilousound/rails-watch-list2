Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: [:create, :new]
  end

  resources :bookmarks, only: [:destroy]
end
