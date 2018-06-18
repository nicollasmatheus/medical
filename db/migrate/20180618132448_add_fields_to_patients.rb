class AddFieldsToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :father, :string
    add_column :patients, :mother, :string
  end
end
