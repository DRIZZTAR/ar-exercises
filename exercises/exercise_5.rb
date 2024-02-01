require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)

puts ("All revenue 💰#{@total_revenue}")

@average_revenue = Store.average(:annual_revenue)

puts ("Average revenue ⨏#{@average_revenue}")

@stores_over_million = Store.where("annual_revenue > 1000000").size

puts ("Stores with over a million in revenue: #{@stores_over_million}")
