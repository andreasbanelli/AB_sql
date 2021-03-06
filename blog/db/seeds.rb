# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###Ceci est le contenu de db/seeds.rb
require 'faker'
# Creating 10 fake users
10.times do
  first_user = User.create(user_name: Faker::Name.unique.name, article: Faker::Lorem.sentence)
  first_article = Article.create(article_name: Faker::Name.unique.name, body: Faker::Lorem.sentence(3), description: Faker::Lorem.sentence(4))  
end
