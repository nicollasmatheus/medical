class CreateInsurances < ActiveRecord::Migration[5.2]
  def change
    create_table :insurances do |t|
      t.string :name

      t.timestamps
    end
  end
end
