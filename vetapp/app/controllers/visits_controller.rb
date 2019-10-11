class VisitsController < ApplicationController
       before_action :authenticate_user!

    def index
        @animal=Animal.all
        @visit=Visit.all
        @user=User.all
    end
    
    def show
    end
    
    def new
        @visit=Visit.new
        @animal=Animal.all
        @user=User.all
    end
    
    def create
        @animal=Animal.all
        @user=User.all
        @visit=Visit.new
        @visit.weight=params[:visit][:weight]
        @visit.animal_id=params[:animal_id]
        @visit.vet=params[:visit][:vet]
        @visit.user_id=current_user.id
        @visit.save!
        redirect_to animal_path(params[:animal_id])
    end
    
    def edit
        @visit=Visit.find(params[:id])
        @animal=Animal.all
        @user=User.all
    end
    
    def update
        @animal=Animal.all
        @visit=Visit.find(params[:id])
        @visit.weight=params[:visit][:weight]
        @visit.animal_id=params[:animal_id]
        @visit.vet=params[:visit][:vet]
        @visit.user_id=current_user.id
        @visit.save!
        redirect_to animal_path(params[:animal_id])
    end
    
    def destroy
      @visit=Visit.find(params[:id])
        @visit.destroy  
      redirect_to animals_path
    end
end
