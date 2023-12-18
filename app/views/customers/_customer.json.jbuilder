json.extract! customer, :id, :name, :ID, :DateofBirth, :phone, :email, :level, :created_at, :updated_at
json.url customer_url(customer, format: :json)
