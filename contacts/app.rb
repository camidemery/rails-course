require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter:'sqlite3', database:'database.db'}

class Contact < ActiveRecord::Base
end

#homepage
get '/' do
    @contacts=Contact.all
    erb :landing 
end

#search
get '/search' do
    query = "%#{params[:query]}%"
    @contacts=Contact.where("first_name LIKE ? OR last_name LIKE ?", query, query)
    erb :search
end

#adding new contacts
get '/contacts/new' do
    erb :new
end

#synching new contacts to database
post '/contacts' do
    contact=Contact.new
    contact.first_name=params[:first_name]
    contact.last_name=params[:last_name]
    contact.phone=params[:phone]
    contact.email=params[:email]
    contact.address=params[:address]
    contact.city=params[:city]
    contact.state=params[:state]
    contact.zip=params[:zip]
    contact.save
    redirect '/'
end    

#editing existing questions
get '/contacts/edit' do
    @contact = Contact.find(params[:id])
    erb :edit
end

#synching edited contacts
post '/contacts/edit' do
    contact=Contact.find_by(params[:id])
    contact.first_name=params[:first_name]
    contact.last_name=params[:last_name]
    contact.phone=params[:phone]
    contact.email=params[:email]
    contact.address=params[:address]
    contact.city=params[:city]
    contact.state=params[:state]
    contact.zip=params[:zip]
    contact.save
    redirect "/"
end

#deleting contact
get '/contacts/delete' do
    contact=Contact.find_by(params[:id])
    contact.destroy
    redirect "/"
end