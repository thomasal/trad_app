json.array!(@traders) do |trader|
  json.extract! trader, :id, :nom_trader
  json.url trader_url(trader, format: :json)
end
