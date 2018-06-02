class CreateSurgeries < ActiveRecord::Migration[5.2]
  def change
    create_table :surgeries do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :insurance, foreign_key: true
      t.references :patient_treatment, foreign_key: true
      t.text :reason
      t.date :scheduling

      t.timestamps
    end
  end
end
