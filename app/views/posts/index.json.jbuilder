json.posts @posts do |post|
  json.id post.id
  json.name post.name
  json.rating post.rating
  json.image post.image
  json.review post.review
  json.restaurant post.restaurant do |restaurant|
    json.id restaurant.id
    json.name restaurant.name
    json.city restaurant.city
    json.state restaurant.state
  end
end