Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  #get 'pages/home'

  root 'pages#home'

  resources :users, only: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
