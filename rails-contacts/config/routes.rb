Rails.application.routes.draw do
    get '/contacts' => 'contacts#index'
    get '/contacts/new' =>'contacts#new'
    post '/contacts' => 'contacts#create'
    get '/contacts/edit' => 'contacts#edit'
    post '/contacts/edit' => 'contacts#update'
    get '/search' => 'contacts#search'
    get '/contacts/destroy' => 'contacts#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
