# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Destroying all Posts"
Post.destroy_all

puts "Creating Posts"
10.times do |i|
  Post.create!(title: "first #{i + 1}", body: "kdhfhfkahsdkfhak #{i + 1}")
end

puts "Done !"
