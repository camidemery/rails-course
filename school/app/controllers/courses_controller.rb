class CoursesController < ApplicationController
    def new
        @course=Course.new
    end
    
    def create 
        course=Course.new
        course.name= params[:name]
        course.location= params[:location]
        course.description = params[:description]
        course.save
        redirect_to'/courses'
    end
    
    #Listing of all courses
    def index
        @course=Course.all
    end
    
    #send form to edit
    def edit
        @course=Course.find(params[:id])
    end
    
    #updating courses
    def update
        @course=Course.find(params[:id])
        @course.name= params[:name]
        @course.location= params[:location]
        @course.description = params[:description]
        @course.save
        redirect_to'/courses'
    end
    
    #destroy
    def delete
        course=Course.find(params[:id])
        course.destroy
        redirect_to '/courses' 
    end
    
    def show
        @course=Course.find(params[:id])
    end
    
end
