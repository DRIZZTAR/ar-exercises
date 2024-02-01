require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

puts "---Mens Stores---"
@mens_stores.each do |store|
  puts "Name: #{store.name} Annual Revenue: #{store.annual_revenue}"
end

puts "---Womens Apparel Stores---"
@womens_apparel = Store.where(womens_apparel: true)

@womens_apparel.each do |store|
  if store.annual_revenue < 1000000
    puts "Name: #{store.name} Annual Revenue: #{store.annual_revenue}"
  end
end
