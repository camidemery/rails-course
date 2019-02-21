class VisitsController < ApplicationController
       before_action :authenticate_user!

    def index
        @animal=Animal.all
        @visit=Visit.all
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
        @visit=Visit.new
        @visit.weight=params[:visit][:weight]
        @visit.animal_id=params[:visit][:animal_id]
        @visit.vet=params[:visit][:vet]
        @visit.user_id=current_user
        @visit.save
        redirect_to visits_path
    end
    
    def edit
        @visit=Visit.find(params[:id])
    end
    
    def update
        @animal=Animal.all
        @visit=Visit.find(params[:id])
        @visit.weight=params[:visit][:weight]
        @visit.animal_id=params[:visit][:animal_id]
        @visit.user_id=current_user
        @visit.save
        redirect_to animals_path(@animal)
    end
    
    def delete
    end

end
