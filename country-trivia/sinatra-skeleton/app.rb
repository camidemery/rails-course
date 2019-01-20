require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter:'sqlite3', database:'test.db'}

class Question < ActiveRecord::Base
end


#then set up sinatra actions
#need to load all questions and display them 
get '/questions' do
    @questions = Question.all
    erb :questions
end

get '/questions/new' do
    erb :new
end

#synching new questions to database
post '/questions' do
    question = Question.new
    question.question = params[:question]
    question.answer = params[:answer]
    question.flag = params[:flag]
    question.save
    redirect "/questions"
end    

#editing existing questions
get '/quesitons/edit' do
    @question = Question.find(params[:id])
    erb :edit
end

#synching edited questions
post '/questions/edit' do
    question = Question.find_by(params[:id])
    question.question = params[:question]
    question.answer = params[:answer]
    question.flag = params[:flag]
    question.save
    redirect "/questions"
end

#flashcard page

get '/guess' do
    @questions = Question.all
    index = rand(@questions.length)
    @question = @questions[index]
    erb :guess
end

#answer
get "/answer" do 
    @question = Question.find(params[:id])
    @question.id=params[:id]
    erb :answer
end

#landing page