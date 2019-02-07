class EquinesController < ApplicationController
    def new
        @equine=Equine.new
    end
    
    def show
        @equine=Equine.find(params[:id])
    end
    
    #creating equine
    def create 
        @equine=Equine.new
        @equine.name=params[:name]
        @equine.picture=params[:picture]
        @equine.save
        redirect_to '/equines'
    end
    
    #Listing of all equines
    def index
        @equine=Equine.all
    end
    
    #send form to edit
    def edit
        @equine=Equine.find(params[:id])
    end
    
    #updating equines
    def update
        @equine=Equine.find(params[:id])
        @equine.name=params[:name]
        @equine.picture=params[:picture]
        @equine.save
        redirect_to '/equines'
    end
    
    #destroy
    def destroy
        @equine=Equine.find(params[:id])
        @equine.destroy
        redirect_to '/equines'
    end

end
