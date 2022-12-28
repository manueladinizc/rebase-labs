class CreateExamsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.string :registration_number
      t.string :name
      t.string :email
      t.date :birth_date
      t.string :address
      t.string :city
      t.string :state
      t.string :doctor_crm
      t.string :doctor_crm_state
      t.string :doctor_name
      t.string :doctor_email
      t.string :exam_token
      t.date :exam_date
      t.string :exam_type
      t.string :exam_limit
      t.string :exam_type_result
    end
    add_index :exams, [ :registration_number,
                          :name,
                          :email,
                          :birth_date,
                          :address,
                          :city,
                          :state,
                          :doctor_crm,
                          :doctor_crm_state,
                          :doctor_name,
                          :doctor_email,
                          :exam_token,
                          :exam_date,
                          :exam_type,
                          :exam_limit,
                          :exam_type_result ], unique: true, name: 'patient'
  end
end