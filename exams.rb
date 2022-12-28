class Exam < ActiveRecord::Base

  validates :registration_number, uniqueness: { scope: [:name,
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
                                                        :exam_type_result ] }

end