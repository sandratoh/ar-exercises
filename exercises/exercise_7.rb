require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts 'Please enter a store name:'
print '> '
new_store = Store.create(name: gets.chomp)
# new_store = Store.create(name: gets.chomp, annual_revenue: 0, mens_apparel: true)

puts new_store.errors.full_messages   # => Annual revenue is not a number
                                      #### Mens apparel must be true if store doesn't carry women's apparel
                                      #### Womens apparel must be true if store doesn't carry men's apparel
                                      # => doesn't log anything if no error message

# puts new_store.errors.messages      # => {
                                      #### :annual_revenue=>["is not a number"], 
                                      #### :mens_apparel=>["must be true if store doesn't carry women's apparel"], 
                                      #### :womens_apparel=>["must be true if store doesn't carry men's apparel"]
                                      #### }
                                      # => gives empty curly braces {} if no error message
