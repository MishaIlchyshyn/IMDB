Rails.application.routes.draw do
  devise_for :admins
  root "home#index"

  namespace :admin do
    resources :movies, only: %i[index show destroy edit update]
  end
end
