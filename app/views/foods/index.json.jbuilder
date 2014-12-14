json.foods @foods do |food|
  json.id food.id
  json.name food.name
  json.avg_rating food.avg_rating
  json.bookmarked food.bookmarked
  json.user_id food.user_id
  json.restaurant_id food.restaurant_id
  json.posts food.posts do |post|
    json.id post.id
    json.rating post.rating
    json.review post.review
    json.user_id post.user_id
    json.food_id post.food_id
    json.food_image post.food_image
  end
end