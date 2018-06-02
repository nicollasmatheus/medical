class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :address
      t.integer :cep
      t.string :cpf
      t.string :rg
      t.references :insurance, foreign_key: true
      t.boolean :companion

      t.timestamps
    end
  end
end
