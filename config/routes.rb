Rails.application.routes.draw do
  devise_for :users
  resources :listings
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'hub/index'
  get 'hub/my_listings'
  get 'hub/site_appraisal_tool'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
