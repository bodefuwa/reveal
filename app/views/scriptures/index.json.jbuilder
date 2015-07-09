json.array!(@scriptures) do |scripture|
  json.extract! scripture, :id, :book, :chapter, :verser, :text
  json.url scripture_url(scripture, format: :json)
end
