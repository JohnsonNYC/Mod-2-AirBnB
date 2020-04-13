# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
User.destroy_all
Listing.destroy_all

r1 = Review.create!(title: "Title Test", rating: 4, description: "A great time")

u1 = User.create!(first_name: "Johnson", last_name: "Kow", age: 25, email: "jj@gmail.com", password: "password", review_id: 1)

l1 = Listing.create!(description: "Amazing private room of Santa Monica", rental_type: "private room", ameneties: "free wifi")