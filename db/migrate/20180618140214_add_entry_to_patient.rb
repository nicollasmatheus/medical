class AddEntryToPatient < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :entry, :string
  end
end
