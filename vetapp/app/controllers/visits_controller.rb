class VisitsController < ApplicationController
    def index
    end
    
    def show
    end
    
    def new
        @visit=Visit.new
    end
    
    def create
        @visit=Visit.new
        @visit.weight=params[:visit][:weight]
        @visit.animal_id=params[:visit][:animal_id]
        @visit.user_id=current_user.id
        @visit.save
        redirect_to animals_path(@animal)
    end
    
    def edit
        @visit=Visit.find(params[:id])
    end
    
    def update
        @visit=Visit.find(params[:id])
        @visit.weight=params[:visit][:weight]
        @visit.animal_id=params[:visit][:animal_id]
        @visit.user_id=current_user.id
        @visit.save
        redirect_to animals_path(@animal)
    end
    
    def delete
    end

end
