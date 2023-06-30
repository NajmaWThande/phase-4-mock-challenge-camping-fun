Rails.application.routes.draw do
  get 'signups/create'
  get 'activities/index'
  get 'activities/destroy'
  get 'campers/index'
  get 'campers/show'
  get 'campers/create'
  resources :campers, only: [:index, :show, :create]
  resources :activities, only: [:index, :destroy]
  resources :signups, only: [:create]

  get '/campers/:id', to: 'campers#show_with_activities'
  delete '/activities/:id', to: 'activities#destroy_with_signups'
end
