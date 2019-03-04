gem "minitest", ">= 5.0.0"
require "minitest/autorun"
require "minitest/pride"
require_relative "robot_name"

# Kate's Robot Factory
puts "Welcome to Kate's Robot Factory! Here is your robot's name:"

def letters
  letters = ("A".."Z").to_a.sample(2)
  return letters
end

def numbers
  numbers = ("0".."9").to_a.sample(3)
  return numbers
end

puts letters().join + numbers().join

puts "Please return for the next robot's name."
