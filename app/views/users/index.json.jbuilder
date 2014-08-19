json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :profile_picture, :education, :birthday, :location
  json.url user_url(user, format: :json)
end
