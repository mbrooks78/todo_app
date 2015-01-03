json.array!(@accounts) do |user|
  json.extract! user, :id, :first_name, :last_name
  json.url account_url(user, format: :json)
end
