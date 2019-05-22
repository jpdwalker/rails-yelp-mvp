# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting old restos"
Restaurant.destroy_all

puts "creating restos"
Restaurant.create(name: "Dishoom", address: "Shoreditch", category: "chinese", phone_number: "0181 8979 9082")

Restaurant.create(name: "Jaimes", address: "City", category: "italian", phone_number: "0181 37373 9082")

Restaurant.create(name: "Le garret", address: "Wimbledon", category: "french", phone_number: "0181 37373 373")

Restaurant.create(name: "Soi", address: "Weybridge", category: "japanese", phone_number: "0181 37373 32727")

Restaurant.create(name: "Alam", address: "Knightsbridge", category: "french", phone_number: "0181 18282 32727")
""
