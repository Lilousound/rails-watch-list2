Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "lists#index"

  resources :movies, only: [ :index ] do
    resources :bookmarks, only: [ :create, :new ]
  end
  resources :lists

  resources :bookmarks, only: [ :destroy ]
end
