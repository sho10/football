Rails.application.routes.draw do
  root to: 'teams#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams do
    resources :players, only: [ :new, :create ]
  end
resources :players, only: [:destroy]
end


