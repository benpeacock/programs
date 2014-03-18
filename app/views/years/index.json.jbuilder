json.array!(@years) do |year|
  json.extract! year, :id, :id, :year
  json.url year_url(year, format: :json)
end
