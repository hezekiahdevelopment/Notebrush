Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}

  root 'pages#home'

  resources :users, only: [:show, :index]
  resources :posts, only: [:create, :edit, :update, :destroy]

  resources :activities,  only: [:index]
  resources :friendships, only: [:create, :destroy, :accept] do
    member do
      put :accept
    end
  end

end
