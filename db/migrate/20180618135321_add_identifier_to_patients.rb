class AddIdentifierToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :identifier, :string
  end
end
