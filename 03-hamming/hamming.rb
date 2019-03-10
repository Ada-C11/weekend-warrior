class Hamming
  attr_reader :compute

  def self.compute(string1, string2)
    hamming_distance = 0
    string1.length == string2.length ? true : raise ArgumentError
    string1.length.times do |i|
      string1[i] == string2[i] ? next : hamming_distance += 1
      i += 1
    end
    return hamming_distance
  end


end
