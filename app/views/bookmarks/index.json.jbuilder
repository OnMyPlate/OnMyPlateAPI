json.bookmarks @bookmarks do |bookmark|
  json.id bookmark.id
  json.bookmarked bookmark.bookmarked
  json.user_id bookmark.user_id
  json.food_id bookmark.food_id
end