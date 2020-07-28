# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.destroy_all
Card.destroy_all
User.destroy_all

flatiron = User.create(username: "Flatiron")

beer = Deck.create(name: "Beer", user_id: flatiron.id)

10.times do 
    Card.create(front_word: Faker::Beer.brand, back_definition: Faker::Beer.name, back_notes: Faker::Beer.style, understanding: false, understanding_num: 0, deck_id: beer.id)
end

