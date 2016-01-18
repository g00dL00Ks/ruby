json.array!(@elists) do |elist|
  json.extract! elist, :id, :name, :email, :city
  json.url elist_url(elist, format: :json)
end
