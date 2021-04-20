Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root "movies#index"

  resources :movies, only: %i[index show]

  namespace :admin do
    resources :movies, only: %i[index new create show destroy edit update]
  end
end
