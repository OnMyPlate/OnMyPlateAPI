json.food_images @food_images do |food_image|
  json.id food_image.id
  json.image_url food_image.image_url
  json.post_id food_image.post_id
end