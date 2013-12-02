json.array!(@point_totals) do |point_total|
  json.extract! point_total, 
  json.url point_total_url(point_total, format: :json)
end
