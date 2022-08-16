Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "lists#index"
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: :create
  end
  resources :bookmarks, only: :destroy

  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new"
  # get "lists/:id", to: "lists#show", as: :list
  # post "lists", to: "lists#create"
  # get "lists/:id/bookmarks/new", to: "bookmarks#new", as: :bookmarks_new
  # post "lists/:id/bookmarks", to: "bookmarks#create", as: :bookmarks
  # delete "bookmarks/:id", to: "bookmarks#destroy"
end
