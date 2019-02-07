class BarnsController < ApplicationController
    def new
        @barn=Barn.new
    end
    
    def create 
        @barn=Barn.new
        @barn.name= params[:name]
        @barn.location= params[:location]
        @barn.owner = params[:owner]
        @barn.save
        redirect_to'/barns'
    end
    
    #Listing of all barns
    def index
        @barn=Barn.all
    end
    
    #send form to edit
    def edit
        @barn=Barn.find(params[:id])
    end
    
    #updating barns
    def update
        @barn=Barn.find(params[:id])
        @barn.name= params[:name]
        @barn.location= params[:location]
        @barn.owner = params[:owner]
        @barn.save
        redirect_to'/barns'
    end
    
    #destroy
    def destroy
        @barn=Barn.find(params[:id])
        @barn.destroy
        redirect_to '/barns' 
    end
    
    def show
        @barn=Barn.find(params[:id])
    end
    
end
