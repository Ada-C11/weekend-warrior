class WordCount
  def initialize(word)
    @word = hashed_word(word)
  end

  def words(word)
    words_array = word.split(" ")
    hashify = Hash.new(0)

    words_array.each { |word| result[word] += 1}
    return hashify
  end

end