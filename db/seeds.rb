# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_names = ['Beauty and health', 'Auto', 'Food and drinks']

category_names.each do |name|
  Category.create! name: name
end

categories = Category.all.to_a

adjectives = %w(Red Green Black White Yellow Soft Hard Used Fresh)
nouns = %w(Pepper Pie Window Oil Lotion Fluid Burger Pasta Noodles)

100.times do
  Expense.create!(
    total: rand(1000..10000) / 100.0,
    category: categories.sample,
    title: "#{adjectives.sample} #{nouns.sample}",
    date: rand(30).days.ago.to_date,
  )
end
