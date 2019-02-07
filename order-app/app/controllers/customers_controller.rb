class CustomersController < ApplicationController
    def index
        @customers=Customer.all
    end
    
    def show
        @customer=Customer.find(params[:id])
        @dishes=Dish.all
    end
    
    def add_dish
        customer=Customer.find(params[:customer_id])
        customer_dish=CustomerDish.new
        customer_dish.customer_id=params[:customer_id]
        customer_dish.dish_id=params[:dish_id]
        customer_dish.save
        redirect_to customer_path(customer)
    end
    
    def new
        @customer=Customer.new
    end
    
    def create
        @customer=Customer.new
        @customer.first_name=params[:customer][:first_name]
        @customer.last_name=params[:customer][:last_name]
        @customer.table_number=params[:customer][:table_number]
        @customer.save
        redirect_to '/customers'
    end
    
    def edit
        @customer=Customer.find(params[:id])
    end
    
    def update
        @customer=Customer.find(params[:id])
        @customer.first_name=params[:customer][:first_name]
        @customer.last_name=params[:customer][:last_name]
        @customer.table_number=params[:customer][:table_number]
        @customer.save
        redirect_to '/customers'
    end
    
    def delete
        @customer=Customer.find(params[:customer][:id])
        @customer.destroy
        redirect_to '/customers'
    end
end
