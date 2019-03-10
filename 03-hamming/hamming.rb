def hamming(string1, string2)
  hamming_distance = 0
  string1.length.times do |i|
    string1[i] == string2[i] ? next : hamming_distance += 1
    i += 1
  end
  return hamming_distance
end

string_1 =   "GAGCCTACTAACGGGAT"
string_2 =   "CATCGTAATGACGGCCT"

puts hamming(string_1, string_2)
