json.array!(@lists) do |list|
  json.extract! list, :id, :list_item, :user_id
  json.url list_url(list, format: :json)
end
