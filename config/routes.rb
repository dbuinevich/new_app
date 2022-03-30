Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations", sessions: "sessions"}
  match '/sign_out', to: 'sessions#destroy', via: 'delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "baracholka#index"
end
