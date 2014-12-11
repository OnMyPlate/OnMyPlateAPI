json.posts @posts do |post|
  json.id post.id
  json.rating post.rating
  json.review post.review
  json.food_image post.food_image
end