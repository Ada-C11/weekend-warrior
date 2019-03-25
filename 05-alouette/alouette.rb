class Alouette
  @lyrics = [
    "Et la tête!",
    "Et le bec!",
    "Et les yeux!",
    "Et le cou!",
    "Et les ailes!",
    "Et les pattes!",
    "Et la queue!",
    "Et le dos!"
  ]

  def self.lines_for_verse(verse_num)
    return @lyrics[0..verse_num]
  end

  def self.verse(verse_num)
    current_word = lines_for_verse(verse_num)[3..-2]
    current_stanza = lines_for_verse(verse_num)
    verse = "Je te plumerai #{current_word}\nJe te plumerai #{current_word}"

    return verse += current_stanza.to_s
  end

  def self.sing
    refrain = "Alouette, gentille alouette, \nAlouette, je te plumerai.\n \n"
    last_refrain = "Alouette!\nAlouette\nA-a-a-ah \n \n"

    puts verse(3)

  end
end

puts Alouette.sing