json.extract! profile, :id, :age, :first_name, :last_name, :interests, :about, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
