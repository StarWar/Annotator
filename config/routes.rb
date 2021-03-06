Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#root"

  namespace :api, defaults: {format: JSON} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create] do
      resources :songs, only: [:index]
    end
    resources :songs, only: [:index, :create, :show, :destroy, :update] do
      resources :annotations, only: [:index]
      resources :comments, only: [:index]
    end
    resources :annotations, only: [:create, :show, :destroy, :update] do
      resources :comments, only: [:index]
    end
    resources :comments, only: [:create, :update, :destroy, :show]
  end
end
