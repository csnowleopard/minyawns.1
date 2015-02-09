class CreateActionables < ActiveRecord::Migration
  def change
    create_table :actionables do |t|
      t.boolean :student_requested_job
      t.boolean :employeer_requested_student_for_job
      t.boolean :student_approved_for_job
      t.boolean :appeared_at_job
      t.boolean :student_did_job_well
      t.references :job, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
