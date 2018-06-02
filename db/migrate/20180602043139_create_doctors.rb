class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.integer :crm
      t.string :speciality
      t.date :register

      t.timestamps
    end
  end
end
