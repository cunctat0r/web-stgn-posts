Rails.application.routes.draw do
  resources :posts

#  resources :force_sensors do
#    resources :force_limits_sets
#  end

  root to: 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
