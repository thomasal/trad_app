json.array!(@traders) do |trader|
  json.extract! trader, :id, :nom
  json.url trader_url(trader, format: :json)
end
