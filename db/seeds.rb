# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tom = User.create!(email: 'tom@example.com', password: '111111')
cris = User.create!(email: 'cris@example.com', password: '111111')

 5.times do
    tom.articles.create!(
            title: Faker::Lorem.sentence(word_count: 5),
            content: Faker::Lorem.sentence(word_count: 100)
        )
end

5.times do
    cris.articles.create!(
            title: Faker::Lorem.sentence(word_count: 5),
            content: Faker::Lorem.sentence(word_count: 100)
        )
end