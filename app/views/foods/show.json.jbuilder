json.(@food, :id, :name, :restaurant_name, :city, :state, :avg_rating, :bookmarked, :user_bookmarked,:user_id)

json.posts @food.posts do |post|
  json.id post.id
  json.rating post.rating
  json.review post.review
  json.user_id post.user_id
  json.food_id post.food_id
  json.food_image post.food_image
  json.likes post.likes.count
end
json.bookmarks @food.bookmarks