class Exam < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :patient_treatment
  belongs_to :insurance
end
