Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :locations, only: [:index, :show] do
  	resources :flats, only: [:show, :new, :create]
  end
  resources :tenants, only: [:index, :show]
end
