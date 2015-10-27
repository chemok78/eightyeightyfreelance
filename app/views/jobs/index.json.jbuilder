json.array!(@jobs) do |job|
  json.extract! job, :id, :description, :place, :length, :function, :company, :educationlevel, :yearsexperience, :field1, :field2, :hourlyrate, :region, :field2
  json.url job_url(job, format: :json)
end
