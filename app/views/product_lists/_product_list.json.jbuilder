json.extract! product_list, :id, :product_names, :created_at, :updated_at
json.url product_list_url(product_list, format: :json)
