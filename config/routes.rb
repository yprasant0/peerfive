Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#index'
  resources :users do
    collection do
      get 'searches'
    end
  end
  resources :p5_histories
  resources :reward_histories 
end
