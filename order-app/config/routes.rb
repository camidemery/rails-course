Rails.application.routes.draw do
    resources :customers
    resources :dishes
    
    post '/customers/add_dish' => 'customers#add_dish'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
