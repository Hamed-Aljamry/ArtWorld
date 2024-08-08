# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "cleaning database"
Artwork.destroy_all
User.destroy_all
puts "database cleaned"

puts "creating Artworks"

user = User.create!(email: "test@test.com", password: "123456")
Artwork.create!(category: "Painting", description: "A beautiful painting", title: "The Starry Night", artist: "Vincent van Gogh", photo: "https://images.ctfassets.net/az3stxsro5h5/24L2UM6hV3m4csMvBzkHbj/9d4583541bdb29ae0c6a9ff2b60f1313/After.jpeg?w=2389&h=2986&fl=progressive&q=50&fm=jpg", user_id: user.id)


puts "Artworks created"
