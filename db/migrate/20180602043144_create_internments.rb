class CreateInternments < ActiveRecord::Migration[5.2]
  def change
    create_table :internments do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :insurance, foreign_key: true
      t.references :patient_treatment, foreign_key: true
      t.text :justification
      t.date :admission
      t.date :release

      t.timestamps
    end
  end
end
