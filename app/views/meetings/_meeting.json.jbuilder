json.extract! meeting, :id, :title, :scheduled_for, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
