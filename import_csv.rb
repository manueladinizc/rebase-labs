require 'csv'
require 'sinatra/activerecord'
require './exams'

class ImportCsv

  def import_csv
    rows = CSV.read("./data.csv", col_sep: ';')
  
    columns = rows.shift 
  
    rows.map do |row|
      e = row.each_with_object({}).with_index do |(cell, acc), idx|
        
        if columns[idx] = "cpf"
          column = :registration_number
        elsif columns[idx] = "nome"
          column = :name
        elsif columns[idx] = "email"
          column = :email
        elsif columns[idx] = "data nascimento paciente"
          column = :birth_date
        elsif columns[idx] = "endereço/rua paciente"
          column = :address
        elsif columns[idx] = "cidade paciente"
          column = :city
        elsif columns[idx] = "estado paciente"
          column = :state
        elsif columns[idx] = "crm médico"
          column = :doctor_crm
        elsif columns[idx] = "crm médico estado"
          column = :doctor_crm_state
        elsif columns[idx] = "nome médico"
          column = :doctor_name
        elsif columns[idx] = "email médico"
          column = :doctor_email
        elsif columns[idx] = "tokenresultado exame"
          column = :exam_token
        elsif columns[idx] = "data exame"
          column = :exam_date
        elsif columns[idx] = "tipo exame"
          column = :exam_type
        elsif columns[idx] = "limites tipo exame"
          column = :exam_limit
        elsif columns[idx] = "resultado tipo exame"
          column = :exam_type_result
        end
        
        column = columns[idx]
        acc[column] = cell
      end
    Exam.create(e)
    end
    
  end

end