Rails.application.routes.draw do
  resources :artists, only: [:index, :new, :create, :edit, :update, :show]
  resources :instruments, only: [:index, :show]
  resources :plays, only: [:new, :create]
end
