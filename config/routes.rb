Rails.application.routes.draw do
  devise_for :users
  resources :listings
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'hub/index'
  get 'hub/get_started'
  get 'hub/my_listings'
  get 'hub/growth_intelligence'
  get 'hub/marketing_suite'
  get 'hub/site_appraisal_tool'
  get 'hub/leasing_guide'
  get 'hub/community'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
