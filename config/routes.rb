Rails.application.routes.draw do
  devise_for :users
  root to: "basket_areas#index"
  resources :basket_areas, only: [:index, :new, :create]
end
