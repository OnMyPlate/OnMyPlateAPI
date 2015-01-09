json.users @users do |user|
  json.id user.id
  json.username user.username
  json.email user.email
  json.token user.token
  json.foods user.foods
  json.posts user.posts
  json.likes user.likes
  json.bookmarks user.bookmarks
end