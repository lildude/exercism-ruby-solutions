class Complement
  def self.of_dna dna
    /[^GCTA]/ =~ dna ? '' : dna.tr('GCTA','CGAU')
  end
end

module BookKeeping
  VERSION = 4
end
