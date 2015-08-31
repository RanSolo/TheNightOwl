json.array!(@events) do |event|
  json.extract! event, :id, :artist, :eventDate, :links
  json.url event_url(event, format: :json)
end
