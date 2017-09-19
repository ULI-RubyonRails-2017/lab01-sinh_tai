Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'menu#index'

  resources :menu , only: [:index]
  resources :contact_us , only: [:index]

end
