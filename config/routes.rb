Rails.application.routes.draw do
  root 'root#index'

  resources :users do
    resources :images, controller: 'users/images'
  end
  resources :mychara_images

end
