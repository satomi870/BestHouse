# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
fruits = ["apple", "orange", "melon", "banana", "pineapple"] #設備=[バストイレ別,家具付き]
for num in 1..50 do
  Character.create(name: fruits.sample, movie: movies.first)
end