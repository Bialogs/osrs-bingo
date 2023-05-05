# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#show"
  get "auth/:provider/callback", to: "users/sessions#create"
  get "log_out", to: "users/sessions#destroy"
  get "auth/failure", to: "users/sessions#failure"
end
