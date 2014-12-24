json.foods @foods do |food|
  json.id food.id
  json.name food.name
  json.restaurant_name food.restaurant_name
  json.city food.city
  json.state food.state
  json.avg_rating food.avg_rating
  json.user_id food.user_id
  json.posts food.posts do |post|
    json.id post.id
    json.rating post.rating
    json.review post.review
    json.likes post.likes
    json.user_id post.user_id
    json.food_id post.food_id
    json.food_image post.food_image
    json.likes post.likes.count
  end
  json.bookmarks food.bookmarks
end