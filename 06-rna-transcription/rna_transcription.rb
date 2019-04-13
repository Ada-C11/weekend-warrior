#making rna transcription class

class Complement
  DNA = ['G', 'C', 'T', 'A']
  RNA = ['C', 'G', 'A', 'U']

  attr_reader :of_dna, :of_rna

  def self.of_dna(dna_string)
    rna_complement = ""

    dna_string.chars.each do |c|
      case c
      when "G"
        rna_complement << "C"
      when "C"
        rna_complement << "G"
      when "T"
        rna_complement << "A"
      when "A"
        rna_complement << "U"
      end

      if !DNA.include?(c)
        raise ArgumentError, "Unknown nucleotide #{c}"
      end
    end
    return rna_complement
  end


  def self.of_rna(rna_string)
    dna_complement = ""

    rna_string.chars.each do |c|
      case c
      when "C"
        dna_complement << "G"
      when "G"
        dna_complement << "C"
      when "A"
        dna_complement << "T"
      when "U"
        dna_complement << "A"
      end

      if !RNA.include?(c)
        raise ArgumentError, "Unknown nucleotide #{c}"
      end
    end
    return dna_complement
  end
end

