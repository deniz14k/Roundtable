json.extract! item, :id, :content, :discussed, :meeting_id, :created_at, :updated_at
json.url item_url(item, format: :json)
