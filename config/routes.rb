Rails.application.routes.draw do
  devise_for :users
  root to: "basket_areas#index"
  resources :basket_areas do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
end
