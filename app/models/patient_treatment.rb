class PatientTreatment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  has_many :exams
end
