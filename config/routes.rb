Rollspelsmuseet::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :products
  root 'startpage#index'
end
