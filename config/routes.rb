Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    #post    'signup', to: 'users#create'
    resources :users
    
    resources :trash, only: [:index, :create]
    
    resources :point, only: [:index, :create]
end
