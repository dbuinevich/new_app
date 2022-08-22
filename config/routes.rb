Rails.application.routes.draw do
  devise_scope :user do
    get "/my_profile" => "registrations#show"
  end
  devise_for :users, controllers: {registrations: "registrations", sessions: "sessions"}
  match '/sign_out', to: 'sessions#destroy', via: 'delete'
  match '/users', to: 'users#index', via: 'get'
  match '/users/new', to: 'users#new', via: 'get'
  match '/users_create', to: 'users#create', via: 'post'
  match '/users/:id/edit', to: 'users#update', via: 'patch'
  match '/users/:id', to: 'users#show', via: 'get'
  
  
  
  resources :offers do
    collection do
      get :models
    end
  end
  
  resources :brands, :models, :users
  root to: "baracholka#index"
end
