# db/seeds.rb
require 'csv'
require './import_csv'
require 'sinatra'
require 'sinatra/activerecord'

exams = [
  {
    registration_number: '048.973.170-88' ,
    name: 'Emilly Batista Neto',
    email: 'emily@email.com' ,
    birth_date: '2001-03-11',
    address: '165 Rua Rafaela',
    city: 'Recife',
    state: 'Pernambnuco',
    doctor_crm: 'B000BJ20J4',
    doctor_crm_state: 'PE',
    doctor_name: 'Maria Luiza Pires',
    doctor_email: 'maria@email.com',
    exam_token: 'IQCZ17',
    exam_date: '2021-08-05',
    exam_type: 'hemacias',
    exam_limit: '5-52',
    exam_type_result: '97'
  }
]

exams.each do |e|
  Exam.create(e)
end


ImportCsv.import_csv




# rows = CSV.read("./data.csv", col_sep: ';')

# columns = rows.shift

# a = rows.map do |row|
#   row.each_with_object({}).with_index do |(cell, acc), idx|
#     column = columns[idx]
#     acc[column] = cell
#   end
# end

# a.map do |r|
#   Exam.create(
#     registration_number: r['cpf'],
#     name: r['nome paciente'],
#     email: r['email paciente'] ,
#     birth_date: r['data nascimento paciente'],
#     address: r['endereço/rua paciente'],
#     city: r['cidade paciente'],
#     state: r['estado paciente'],
#     doctor_crm: r['crm médico'],
#     doctor_crm_state: r['crm médico estado'],
#     doctor_name: r['nome médico'],
#     doctor_email: r['email médico'],
#     exam_token: r['token resultado exame'],
#     exam_date: r['data exame'],
#     exam_type: r['tipo exame'],
#     exam_limit: r['limites tipo exame'],
#     exam_type_result: r['resultado tipo exame']
#   )
# end