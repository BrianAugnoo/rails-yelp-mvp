# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "created new model of restaurant: bristol..."
bristol = Restaurant.new(name: "epicure", categorie: "french", address: "paris", phone_number: 230)
constinue = true
if bristol.valid?
  bristol.save
  puts "bristol are saved"
else
  puts "bristol cannot be saved"
end

puts "create new review model: yummy"
if constinue
  yummy = Review.new(rating: 4, content: "this meal are very yummy!")
  yummy.restaurant = bristol
  if yummy.save
    puts "yummy saved"
  else
    puts "cannot save yummy"
  end
end
