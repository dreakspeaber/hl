json.array!(@poojas) do |pooja|
  json.extract! pooja, :id, :name, :idol, :description, :price, :availability
  json.url pooja_url(pooja, format: :json)
end
