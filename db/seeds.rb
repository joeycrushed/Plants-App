# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jon = User.first
plants = ["Bush", "Flower", "Tree", "Rose"]
10.times do
  plant = Plant.new(
    name: "#{Faker::Creature::Animal.name} #{plants.sample}",
    description: Faker::TvShows::BigBangTheory.quote,
    image: "https://source.unsplash.com/featured/?plant"
  )
  plant.user = jon
  plant.save!
end
