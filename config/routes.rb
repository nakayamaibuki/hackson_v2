Rails.application.routes.draw do
  get 'home/scene_1'
  get 'home/index'
  get 'home/title'
  get 'home/scene_2'
  
  post 'home/scene_1', to: 'home#AddInput'
  post 'home/index', to: 'home#clear_datebase'
  # post 'home/scene_1', to: 'home#SaveName'
  # post 'home/scene_1', to: 'home#clear_datebase'

  # resources :post
  # get 'home/scene_1'

  get "up" => "rails/health#show", as: :rails_health_check
end
