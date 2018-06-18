class RemoveIdentifierFromPatients < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :identifier, :string
  end
end
