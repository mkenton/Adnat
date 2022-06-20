# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing out previous seeded data..."
Organization.destroy_all


puts "🌱 seeding Organizations 🌱"
3.times do 
    organization = Organization.create!(
      name: Faker::Company.name,
      hourly_rate: 12.0 + Faker::Number.decimal(l_digits: 1, r_digits: 2)
    )
  end
puts "...done seeding Organizations!"

## TODO: for each org, create multiple users

## TODO: for each user, create mutiple shifts

puts "done seeding! 🚀"