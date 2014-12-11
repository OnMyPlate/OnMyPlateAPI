json.restaurants @restaurants do |restaurant|
  json.id restaurant.id
  json.name restaurant.name
  json.city restaurant.city
  json.state restaurant.state
  json.foods restaurant.foods
end