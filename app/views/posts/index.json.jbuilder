json.posts @posts do |post|
  json.id post.id
  json.name post.name
  json.rating post.rating
  json.review post.review
  json.food_images post.food_images
end