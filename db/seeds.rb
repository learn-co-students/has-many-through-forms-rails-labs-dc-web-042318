# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {username: "User1", email: "user1@gmail.com"},
  {username: "User2", email: "user2@gmail.com"},
  {username: "User3", email: "user3@gmail.com"}
])

posts = Post.create([
  {title: "The First Post", content: "This is the first post"},
  {title: "The Second Post", content: "This is the second post"},
  {title: "The Third Post", content: "This is the third post"}
])

categories = Category.create([
  {name: "Food Blogs"},
  {name: "Work Blogs"},
  {name: "Lifehack Blogs"}
])

post_categories = PostCategory.create([
  {post_id: 1, category_id: 1},
  {post_id: 2, category_id: 2},
  {post_id: 3, category_id: 3}
])

comments = Comment.create([
  {content: "The first comment", user_id: 1, post_id: 1},
  {content: "The second comment", user_id: 2, post_id: 2},
  {content: "The third comment", user_id: 3, post_id: 3}
])
