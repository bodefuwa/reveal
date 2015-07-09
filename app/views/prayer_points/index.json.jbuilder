json.array!(@prayer_points) do |prayer_point|
  json.extract! prayer_point, :id, :point, :prayer_id
  json.url prayer_point_url(prayer_point, format: :json)
end
