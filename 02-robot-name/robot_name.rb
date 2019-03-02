require 'awesome_print'
require 'colorize'

class Robot
  attr_reader :name

  def initialize
    letters = ("A".."Z").to_a.sample(2) 
    numbers = (0..9).to_a.sample(3)
    @name = (letters + numbers).join 
  end

  def reset
    letters = ("A".."Z").to_a.sample(2) 
    numbers = (0..9).to_a.sample(3)
    @name = (letters + numbers).join 
    return @name 
  end
end




