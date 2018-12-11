json.extract! user, :id, :name, :job, :immediate_boss, :created_at, :updated_at
json.url user_url(user, format: :json)
