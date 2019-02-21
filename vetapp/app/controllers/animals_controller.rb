class AnimalsController < ApplicationController
    before_action :authenticate_user!

    def index
        @animals=Animal.all
    end
    
    def show
        @animal=Animal.find(params[:id])
    end
    
    def new
        @animal=Animal.new
    end
    
    def create
        @animal=Animal.new
        @animal.name=params[:animal][:name]
        @animal.sex=params[:animal][:sex]
        @animal.picture=params[:animal][:picture]
        @animal.save
        redirect_to animals_path
    end

    def edit
        @animal=Animal.find(params[:id])
    end
    
    def update
        @animal=Animal.find(params[:id])
        @animal.name=params[:animal][:name]
        @animal.sex=params[:animal][:sex]
        @animal.picture=params[:animal][:picture]
        @animal.save
        redirect_to animals_path
    end
    
    def delete
        animal=Animal.find(params[:id])
        animal.destroy  
        redirect_to animals_path
    end
    
    # def search
    #     @animal=Animal.all
    #     if params[:search]
    #         @animal = Animal.search(params[:search])
            
    #     else
    #         @animal= Animal.all
    #     end
    # end
    

end
