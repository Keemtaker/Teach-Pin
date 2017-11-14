Rails.application.routes.draw do

  devise_for :users
  get "home", to: "pages#home"
  get "create", to: "pages#create"
  root 'pages#home'
  resources :lessons  do
    resources :booking, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
