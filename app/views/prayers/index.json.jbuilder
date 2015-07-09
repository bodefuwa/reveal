json.array!(@prayers) do |prayer|
  json.extract! prayer, :id, :title, :topic_id
  json.url prayer_url(prayer, format: :json)
end
