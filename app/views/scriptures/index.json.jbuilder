json.array!(@scriptures) do |scripture|
  json.extract! scripture, :id, :book, :chapter, :verse
  json.url scripture_url(scripture, format: :json)
end
