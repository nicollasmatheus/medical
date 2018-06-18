class Patient < ApplicationRecord
  belongs_to :insurance

 mount_uploader :patients_documents, PatientsDocumentsUploader
 unique_identifier :entry, 6
end
