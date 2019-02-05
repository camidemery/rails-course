class ContactsController < ApplicationController
    def index
        @contacts=Contact.all
    end 
    
    def new 
    end
    
    def create
        @contacts=Contact.new
        @contacts.first_name=params[:first_name]
        @contacts.last_name=params[:last_name]
        @contacts.save
        redirect_to '/contacts'
    end
    
    def edit
        @contacts=Contact.find_by(params[:id])
    end
    
    def update
        @contacts=Contact.find_by(params[:id])
        @contacts.first_name=params[:first_name]
        @contacts.last_name=params[:last_name]
        @contacts.save
    end
    
    def search
        query = "%#{params[:query]}%"
        @contacts = Contact.where("first_name LIKE ? OR last_name LIKE ?", query, query)
    end
    
    def destroy
        @contacts=Contact.find(params[:id])
        @contacts.destroy
        redirect_to '/contacts'
    end
        
end
