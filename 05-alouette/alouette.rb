require "pry"

class Alouette
  @lyrics = [
    "Et la tête!",
    "Et le bec!",
    "Et les yeux!",
    "Et le cou!",
    "Et les ailes!",
    "Et les pattes!",
    "Et la queue!",
    "Et le dos!",
  ]

  def self.lines_for_verse(verse_num)
    return @lyrics[0..verse_num].reverse
  end

  def self.verse(verse_num)
    current_word = lines_for_verse(verse_num).first[3..-2]
    verse_lines = lines_for_verse(verse_num)
    verse = "Je te plumerai #{current_word}.\nJe te plumerai #{current_word}."

    verse_lines.each do |phrase|
      2.times { verse += "\n" + phrase }
    end

    last_refrain = "\nAlouette!\nAlouette!\nA-a-a-ah \n \n"
    return verse + last_refrain
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
    complete = refrain
    i = 0
    8.times do |i|
      complete += verse(i) + refrain
      i += 1
    end
    

   return complete.strip!
  end
end

puts Alouette.sing
