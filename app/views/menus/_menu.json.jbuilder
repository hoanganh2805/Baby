json.extract! menu, :id, :dishes, :price, :ingredients, :supplier_id, :category_id, :discription, :status, :created_at, :updated_at
json.url menu_url(menu, format: :json)
