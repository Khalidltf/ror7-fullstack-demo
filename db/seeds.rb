# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding user"
User.create!(email: "test@gmail.com", password: "test123", password_confirmation: "test123")

puts "Destroying all Posts"
Post.destroy_all

puts "Creating Posts"
10.times do |i|
  Post.create!(title: "first #{i + 1}", body: " Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio voluptatum illo voluptates officia animi rem aliquam earum repellat? Sed nemo asperiores velit doloribus praesentium nihil atque illo aliquam fugiat facere. #{i + 1}", user_id: User.first.id)
end

puts "Done !"
