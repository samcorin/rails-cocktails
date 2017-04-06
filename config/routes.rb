Rails.application.routes.draw do

  root 'cocktails#index'

  # resources :cocktails, only: [ :index, :show, :new, :create ]

  resources :cocktails do
    resources :doses, only: [ :new, :create, :destroy ]
    # resources :ingredients, only: [ :new, :create, :show ]
  end

  # resources :doses do
  #   resources :ingredients, only: [ :show ]
  # end

  resources :doses, only: [ :show, :new, :create, :destroy ]
end
