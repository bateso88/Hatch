# frozen_string_literal: true

Rails.application.routes.draw do
  resources :site_appraisals
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
  get 'hub/leasing_guide'
  get 'hub/community'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
