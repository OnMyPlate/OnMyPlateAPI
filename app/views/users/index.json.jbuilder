json.users @users do |user|
  json.id user.id
  json.username user.username
  json.foods user.foods
  json.posts user.posts
  json.likes user.likes
  json.bookmarks user.bookmarks
end