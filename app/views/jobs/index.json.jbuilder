json.array!(@jobs) do |job|
  json.extract! job, :id, :name, :starting_date, :starting_time, :ending_date, :ending_time, :location, :wage, :num_minyawns, :description, :business_id
  json.url job_url(job, format: :json)
end
