# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


post_1 = Post.create title:"Post 1", body: "Post 1 body Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem", published_on: Time.now
post_2 = Post.create title:"Post 2", body: "Post 2 body Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem", published_on: 10.years.ago
post_3 = Post.create title:"Post 3", body: "Post 3 body Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem", published_on: 10.days.ago
post_4 = Post.create title:"Post 4", body: "Post 4 body Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem", published_on: "2017-05-19".to_time
