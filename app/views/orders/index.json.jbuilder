json.array!(@orders) do |order|
  json.extract! order, :id, :name, :address, :landmark, :city, :state, :pincode, :phone, :email
  json.url order_url(order, format: :json)
end
