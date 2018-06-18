class AddPatientsDocumentsToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :patients_documents, :string
  end
end
