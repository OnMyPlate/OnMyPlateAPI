json.foods @foods do |food|
  json.id food.id
  json.name food.name
  json.bookmarked food.bookmarked
  json.restaurant_id food.restaurant_id
  json.posts food.posts
end