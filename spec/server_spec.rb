require 'rack/test'
require "spec_helper"
require_relative '../server.rb'

set :environment, :test

def app
  Sinatra::Application
end

describe 'Acessa /hello' do
include Rack::Test::Methods
  it 'com sucesso' do
    get '/hello'
    last_response.status.should == 200
    last_response.body.should == 'Hello world!'
  end
end

describe 'Acessa /tests' do
include Rack::Test::Methods
  it 'com sucesso' do
    get '/tests'
    expect(last_response.status).to eq 200
  end
end


describe 'Acessa /' do
include Rack::Test::Methods
  it 'com sucesso' do
    get '/'
    expect(last_response.status).to eq 200
  end
end