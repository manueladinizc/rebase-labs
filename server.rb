require 'sinatra'
# require 'rack/handler/puma'
require 'sinatra/activerecord'
require './exams'
require './import_csv'

set :database, "sqlite3:project-name.sqlite3"
set :database_file, "./config/database.yml"

get '/tests' do
  ImportCsv.import
  Exam.all.to_json
end

get '/hello' do
  'Hello world!'
end

get '/' do
  @exams = Exam.all
  erb :index
end

# Rack::Handler::Puma.run(
#   Sinatra::Application,
#   Port: 3000,
#   Host: '0.0.0.0'
# )