json.array!(@equities) do |equity|
  json.extract! equity, :id, :nom_action
  json.url equity_url(equity, format: :json)
end
