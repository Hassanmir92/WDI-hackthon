json.array!(@flavours) do |flavour|
  json.extract! flavour, :id, :name, :mood, :personality, :cheekyness, :transport, :scenariotube
  json.url flavour_url(flavour, format: :json)
end
