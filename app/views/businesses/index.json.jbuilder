json.array!(@businesses) do |business|
  json.extract! business, :id, :user_id, :name, :address, :website, :about
  json.url business_url(business, format: :json)
end
