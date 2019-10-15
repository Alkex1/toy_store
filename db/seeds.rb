# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..5
    User.create(
    email: Faker::TvShows::BojackHorseman.character,
    password: Faker::Internet.email
    )
    puts "You have created #{i} User(s)"
end

for i in 1..20
    Toy.create(
        name: Faker::Creature::Animal.name,
        description: Faker::Quote.most_interesting_man_in_the_world,
        date: Faker::Time.between(from: 1.year.ago, to: Time.now),
        # user: Faker::TvShows::BojackHorseman.character
        user_id: rand(1..5)
    )
    puts "You have created #{i} toy(s)"
end