Rails.application.routes.draw do

  get '/courses/new' => 'courses#new'
  post '/courses' => 'courses#create'
  get '/courses' => 'courses#index'
  get '/courses/edit' => 'courses#edit'
  post '/courses/update' => 'courses#update'
  get '/courses/delete' => 'courses#delete'
  get '/courses/show'=> 'courses#show'
  root 'courses#index'
  # same as   get '/' => 'courses#index'
  
  get '/students/new' => 'students#new'
  post '/students' => 'students#create'
  get '/students' => 'students#index'
  
  
  
  
  # resources :courses
end
