json.array!(@students) do |student|
  json.extract! student, :id, :user_id, :first_name, :last_name, :college, :major, :linkedin, :facebook
  json.url student_url(student, format: :json)
end
