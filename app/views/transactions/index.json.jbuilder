json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :quantity, :date_transaction
  json.url transaction_url(transaction, format: :json)
end
