require 'rack/test'
require "spec_helper"
require_relative '../server.rb'
require 'pry-byebug'

set :environment, :test

def app
  Sinatra::Application
end

describe 'Acessa ' do
include Rack::Test::Methods
  it '/hello com sucesso' do
    get '/hello'
    last_response.status.should == 200
    last_response.body.should == 'Hello world!'
  end

  it '/tests com sucesso' do
    get '/tests'
    expect(last_response.status).to eq 200
    result = JSON.parse(last_response.body)[0]['name']
    expect(result).to eq("Emilly Batista Neto")
  end

  it '/ com sucesso' do
    get '/'
    expect(last_response.status).to eq 200
    expect(last_response.body).to include('Emilly Batista Neto')
  end
end





