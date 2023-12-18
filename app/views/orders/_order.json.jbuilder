json.extract! order, :id, :orderid, :customername, :numberofseat, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
