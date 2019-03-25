require 'awesome_print'
require 'colorize'

class Robot
  attr_reader :name

  def initialize
    @name = ("A".."Z").to_a.sample(2).join + rand(0..999).to_s.rjust(3, "0")
  end

  def reset
    initialize
  end
end

kate = Robot.new

puts kate.name
kate.reset
puts kate.name


