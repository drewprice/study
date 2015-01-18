json.array!(@bears) do |bear|
  json.extract! bear, :id, :name, :bio, :age
  json.url bear_url(bear, format: :json)
end
