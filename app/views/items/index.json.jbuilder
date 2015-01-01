json.array!(@items) do |item|
  json.extract! item, :id, :item_entry, :list_id, :due_date
  json.url item_url(item, format: :json)
end
