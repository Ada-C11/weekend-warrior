# class Hamming
#   attr_reader :compute

#   def self.compute(string1, string2)
#     raise ArgumentError if string1.length != string2.length
    
#     hamming_distance = 0
#     string1.length.times do |i|
#       string1[i] == string2[i] ? next : hamming_distance += 1
#     end
#     return hamming_distance
#   end
# end

=begin
strand1 = string1.split('')
strand2 = string2.split('')

return strand1.zip(strand2).count { |strand1, strand2| strand1 != strand2 }
zip matches each item at each index and puts them into a new coupled array:
[["A", "G"],["C, C"]...]
destructuring: strand1 and strand2 in count
=end

class Hamming
  attr_reader :compute

  def self.compute(string1, string2)
    raise ArgumentError if string1.length != string2.length
    
  return string1.chars.zip(string2.chars).count { |strand1, strand2| strand1 != strand2 }
  end
end
