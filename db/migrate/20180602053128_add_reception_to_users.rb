class AddReceptionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :reception, :boolean
  end
end
