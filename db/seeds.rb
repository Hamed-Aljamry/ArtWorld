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
Artwork.create!(category: "Painting", description: "A beautiful painting", title: "The Starry Night", artist: "Vincent van Gogh", user_id: user.id)


puts "Artworks created"
