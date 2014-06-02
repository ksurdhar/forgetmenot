json.(user, :id, :username, :phone_number)

json.relationships(user.liked_relationships) do |relationship|
  json.partial!("relationships/relationship", :relationship => relationship)
end
