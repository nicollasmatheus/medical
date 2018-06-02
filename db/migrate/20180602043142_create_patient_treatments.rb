class CreatePatientTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_treatments do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.string :diagnosis
      t.text :medical_receipt

      t.timestamps
    end
  end
end
