# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Post.delete_all
Food.delete_all
FoodImage.delete_all
Bookmark.delete_all
Like.delete_all

User.create({
    username: 'cyurtbil',
    email: 'cenky92@gmail.com',
    password_digest: '$2a$10$Sf/QzXOZZo1KNR9ghQEFc.DKEmrjX.a3KN..Vk0JN3ZEnVrXvQKqy',
    token: '772d6c34cadd40d5a9b4e2841031e646'
    # status: 'admin'
})