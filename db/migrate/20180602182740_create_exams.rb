class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :patient_treatment, foreign_key: true
      t.text :reason_exam
      t.integer :payment
      t.references :insurance, foreign_key: true

      t.timestamps
    end
  end
end
