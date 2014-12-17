json.posts @posts do |post| 
  json.id post.id
  json.rating post.rating
  json.review post.review
  json.user_id post.user_id
  json.food_id post.food_id
  json.food_image post.food_image
end