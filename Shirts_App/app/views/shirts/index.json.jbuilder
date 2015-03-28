json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :name
  json.url shirt_url(shirt, format: :json)
end
