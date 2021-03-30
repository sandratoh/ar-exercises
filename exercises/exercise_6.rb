require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Chandler", last_name: "Bing", hourly_rate: 60)
@store1.employees.create(first_name: "Leslie", last_name: "Knope", hourly_rate: 65)
@store1.employees.create(first_name: "Michael", last_name: "Scott", hourly_rate: 68)
@store1.employees.create(first_name: "Kevin", last_name: "Malone", hourly_rate: 62)
@store1.employees.create(first_name: "David", last_name: "Rose", hourly_rate: 60)
@store2.employees.create(first_name: "Phoebe", last_name: "Buffay", hourly_rate: 59)
@store2.employees.create(first_name: "Alexander", last_name: "Hamilton", hourly_rate: 63)
@store2.employees.create(first_name: "Ron", last_name: "Swanson", hourly_rate: 68)
@store2.employees.create(first_name: "Dwight", last_name: "Schrute", hourly_rate: 66)