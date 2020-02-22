# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "creating..."
n = 0
20.times do
  n += 1
  player= Player.new(
    name: Faker::WorldCup.roster
  )
end

m = 0
20.times do
  m += 1
  team = Team.new(
    name: Faker::WorldCup.roster
    location: Faker::WorldCup.city
  )
end

puts "...finished"

