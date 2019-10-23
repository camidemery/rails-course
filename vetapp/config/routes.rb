Rails.application.routes.draw do
  devise_for :users
    root 'home#index'
    resources :visits
    resources :animals do
        collection do
          get :search
        end
    end
    
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end