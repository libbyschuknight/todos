Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: "todos#index"

  resources :todos, only: [:index, :new, :create]

  resource :session, only: [:new, :create]
end
