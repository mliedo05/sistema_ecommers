json.extract! cupon, :id, :type, :code, :amount, :discount, :user_id, :created_at, :updated_at
json.url cupon_url(cupon, format: :json)
