json.array!(@services) do |service|
  json.extract! service, :id, :title, :description, :length, :price, :pro_id
  json.url service_url(service, format: :json)
end
