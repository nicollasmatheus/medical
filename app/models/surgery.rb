class Surgery < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :insurance
  belongs_to :patient_treatment
end
