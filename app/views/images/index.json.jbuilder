json.array!(@images) do |image|
  json.extract! image, :id, :name, :description, :picture, :colour
  json.url image_url(image, format: :json)
end
