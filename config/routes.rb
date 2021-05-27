Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: [:update, :edit] do
    resources :bookmarks, only: :create
  end
  resources :bookmarks, only: :delete
  root to: "lists#index"
end
