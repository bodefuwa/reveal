json.array!(@media) do |medium|
  json.extract! medium, :id, :link, :media_type_id, :topic_id
  json.url medium_url(medium, format: :json)
end
