json.array!(@charities) do |charity|
  json.extract! charity, :id, :name, :description, :logo
  json.url charity_url(charity, format: :json)
end
