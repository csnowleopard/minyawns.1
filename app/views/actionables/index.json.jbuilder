json.array!(@actionables) do |actionable|
  json.extract! actionable, :id, :student_requested_job, :employeer_requested_student_for_job, :student_approved_for_job, :appeared_at_job, :student_did_job_well, :job_id, :student_id
  json.url actionable_url(actionable, format: :json)
end
