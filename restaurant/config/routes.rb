Rails.application.routes.draw do
  devise_for :users
  resources :dishes
  
  resources :orders do
    member do #members means we are looking for an id
      get 'prepare'
      #'/orders/:id/prepare'
      post 'add'
      #'/orders/:id/add'
      delete 'remove'
    end
    #collection do would render an id-less URL
    
  end
  
  root 'orders#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
