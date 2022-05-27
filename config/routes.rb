Rails.application.routes.draw do
  #get 'lists/index'
  #get 'lists/create'
  #get 'lists/new'
  #get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: :create

  end
  resources :bookmarks, only: :destroy

end
