Rails.application.routes.draw do
  get 'home/scene_1'
  get 'home/index'
  get 'home/title'
  get 'home/scene_2'
  
  post 'home/scene_1', to: 'home#create'

  # resources :post
  # get 'home/scene_1'

  get "up" => "rails/health#show", as: :rails_health_check
end
