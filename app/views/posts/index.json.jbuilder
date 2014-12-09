json.posts @posts do |post|
  json.id post.id
  json.name post.name
  json.rating post.rating
  json.image post.image
  json.review post.review
end