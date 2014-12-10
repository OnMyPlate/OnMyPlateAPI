json.users @users do |user|
  json.id user.id
  json.username user.username
  json.email user.email
  json.password_digest user.password_digest
  json.token user.token
  json.posts user.posts
end