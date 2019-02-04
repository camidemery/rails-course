class StudentsController < ApplicationController
    def new
        @courses=Course.all
    end
    
    #creating student
    def create 
        student=Student.new
        student.first_name=params[:first_name]
        student.last_name=params[:last_name]
        student.picture=params[:picture]
        student.course_id=params[:course_id]
        student.save
        redirect_to '/students'
    end
    
    #Listing of all students
    def index
        @students=Student.all
    end
    
    #send form to edit
    def edit
    end
    
    #updating students
    def update
    end
    
    #destroy
    def destroy
    end
end
