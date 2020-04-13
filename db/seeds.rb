# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Review.create!(title: "Title Test", rating: 4, description: "A great time")

u1 = User.create!(first_name: "Johnson", last_name: "Kow", age: 25, email: "jj@gmail.com", password: "password", review_id: 1)