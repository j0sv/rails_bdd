Rails.application.routes.draw do

  root controller: :landing, action: :index

  resources :articles, only: [:index, :show, :new, :create]

  resources :comments, only: [:create]

end
