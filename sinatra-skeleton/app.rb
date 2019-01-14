require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: 'sqlite3', database: 'test.db'}

#then set up sinatra actions

get '/' do
    'Hello World'
end

