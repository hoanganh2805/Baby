json.extract! supplier, :id, :name, :phonenumber, :address, :email, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
