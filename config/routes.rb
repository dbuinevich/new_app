Rails.application.routes.draw do
  resources :offer_attachments
  devise_for :users, controllers: {registrations: "registrations", sessions: "sessions"}
  match '/sign_out', to: 'sessions#destroy', via: 'delete'
  
  resources :offers, :brands, :models
  root to: "baracholka#index"
end
