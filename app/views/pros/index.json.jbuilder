json.array!(@pros) do |pro|
  json.extract! pro, :id, :name, :user_id, :user_id
  json.url pro_url(pro, format: :json)
end
