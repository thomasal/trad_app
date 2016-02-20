json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :prix, :quantity, :date_transaction, :trader_id, :action_id
  json.url transaction_url(transaction, format: :json)
end
