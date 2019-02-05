class EquinesController < ApplicationController
    def new
        @barns=Barn.all
    end
    
    #creating equine
    def create 
        equine=Equine.new
        equine.name=params[:name]
        equine.picture=params[:picture]
        equine.save
        redirect_to '/equines'
    end
    
    #Listing of all equines
    def index
        @equines=Equine.all
    end
    
    #send form to edit
    def edit
        @equine=Equine.find(params[:id])
    end
    
    #updating equines
    def update
        equine=Equine.find(params[:id])
        equine.name=params[:name]
        equine.picture=params[:picture]
        equine.save
        redirect_to '/equines'
    end
    
    #destroy
    def delete
        equine=Equine.find(params[:id])
        equine.destroy
        redirect_to '/equines'
    end
end
