require 'csv'
require 'sinatra/activerecord'
require './exams'


class ImportCsv


def import_csv
  rows = CSV.read("./data.csv", col_sep: ';')
  columns = rows.shift

  a = rows.map do |row|
    row.each_with_object({}).with_index do |(cell, acc), idx|
      column = columns[idx]
      acc[column] = cell
    end
  end

  a.map do |r|
    Exam.create(
      registration_number: r['cpf'],
      name: r['nome paciente'],
      email: r['email paciente'] ,
      birth_date: r['data nascimento paciente'],
      address: r['endereço/rua paciente'],
      city: r['cidade paciente'],
      state: r['estado paciente'],
      doctor_crm: r['crm médico'],
      doctor_crm_state: r['crm médico estado'],
      doctor_name: r['nome médico'],
      doctor_email: r['email médico'],
      exam_token: r['token resultado exame'],
      exam_date: r['data exame'],
      exam_type: r['tipo exame'],
      exam_limit: r['limites tipo exame'],
      exam_type_result: r['resultado tipo exame']
    )
  end
end


end

