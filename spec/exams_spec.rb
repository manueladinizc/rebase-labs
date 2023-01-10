require 'rack/test'
require "spec_helper"
require_relative '../import_csv.rb'
require_relative '../server.rb'
require_relative '../exams.rb'

set :environment, :test

def app
  Sinatra::Application
end

RSpec.describe Exam, type: :model do
  describe 'A partir dos dados fornecidos' do
    include Rack::Test::Methods
    it 'grava informações do exame na tabela' do
       Exam.create(
          registration_number: '088.973.170-88',
          name: 'Manuela Diniz',
          email: 'manuela@gmail.com' ,
          birth_date: '1995-03-11',
          address: 'Rua Lua, 44',
          city: 'Recife',
          state: 'Pernambuco',
          doctor_crm: 'B000BJ20J4',
          doctor_crm_state: 'PE',
          doctor_name: 'Eduarda Galvão',
          doctor_email: 'eduarda@gmail.com',
          exam_token: 'IQCZ17',
          exam_date: '2022-03-11',
          exam_type: 'tgo',
          exam_limit: '50-80',
          exam_type_result: '78'
        )

        get '/tests'

        expect(last_response.status).to eq 200
        result = JSON.parse(last_response.body)[0]['name']
        expect(result).to eq("Manuela Diniz")
        expect(result.length).to eq 1
     end
  end
end