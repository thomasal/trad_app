json.array!(@actios) do |actio|
  json.extract! actio, :id, :nom_action
  json.url actio_url(actio, format: :json)
end
