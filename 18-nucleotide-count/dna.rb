class DNA
  attr_reader :strand
  attr_accessor :nucleotide_counts

  def initialize(strand)
    @strand = strand.split("")
    @nucleotide_counts = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    @strand.each do |l|
      @nucleotide_counts[l] += 1
    end
  end

  def count(nucleotide)
    nucleotide_counts[nucleotide]
  end
end
