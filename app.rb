require 'sinatra'
require 'sinatra/activerecord'
require './exams'
require './import_csv'
require 'csv'


set :database, "sqlite3:project-name.sqlite3"
# set :database, "sqlite3:development.sqlite3"
set :database_file, "./config/database.yml"

get '/' do
  @exams = Exam.all
  erb :index
end

get '/tests' do
  ImportCsv.import
  Exam.all.to_json
end

