
Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  get "home", to: "pages#home"

  #creating dashboard
  get "dashboard", to: "lessons#dashboard"


  get "design", to: "pages#design"
  root 'pages#home'
  resources :lessons  do
    resources :bookings, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
