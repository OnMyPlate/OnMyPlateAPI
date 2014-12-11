# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Restaurant.delete_all
Post.delete_all
Food.delete_all

users = User.create({username: 'cyurtbil', email: 'cyurtbil@example.com', password_digest: '$2a$10$5clunfrmafq/KBYN4MmuXuADCI9Cxr2Zm3hYgIozU8Wjn3kxqhQWu', token: '7ed3ff2afdc448e98d656c0be47d530c', status: 2})

# posts = Post.create([{name: 'Fish and Chips', rating: '5', image: 'app/assets.images/food.jpg', review: 'This is good'},
#                      {name: 'Clam Chowder', rating: '4', image: '', review: 'This is ok'},
#                      {name: 'Fish Burger', rating: '2', image: '', review: 'Fish was smelly'}])