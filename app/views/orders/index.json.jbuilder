json.array!(@orders) do |order|
  json.extract! order, :id, :cantidad
  json.url order_url(order, format: :json)
end
