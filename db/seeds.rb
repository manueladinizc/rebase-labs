# db/seeds.rb
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


