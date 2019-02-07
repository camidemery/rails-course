class DishesController < ApplicationController
    def index
        @dishes=Dish.all
    end
    
    def show
        @customers=Customer.all
        @dish=Dish.find(params[:id])
    end
    
    def new
        @dish=Dish.new
    end
    
    def create
        @dish=Dish.new
        @dish.pasta=params[:dish][:pasta]
        @dish.sauce=params[:dish][:sauce]
        @dish.save
        redirect_to '/dishes'
    end
    
    def edit
        @dish=Dish.find(params[:id])
    end
    
    def update
        @dish=Dish.find(params[:id])
        @dish.pasta=params[:dish][:pasta]
        @dish.sauce=params[:dish][:sauce]
        @dish.save
        redirect_to '/dishes'
    end
    
    def delete
        @dish=Dish.find(params[:id])
        @dish.destroy
    end
end
