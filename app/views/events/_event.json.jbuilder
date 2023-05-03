json.extract! event, :id, :clubs_id, :eventname, :desc, :when, :created_at, :updated_at
json.url event_url(event, format: :json)
