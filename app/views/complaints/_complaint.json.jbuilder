json.extract! complaint, :id, :date, :name, :section, :created, :status, :user_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)