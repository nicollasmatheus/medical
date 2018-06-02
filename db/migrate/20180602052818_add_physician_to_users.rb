class AddPhysicianToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :physician, :boolean
  end
end
