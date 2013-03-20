class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand.split("")
  end

  def hamming_distance(string)
    @sequence = string.split("")
    hamming = 0
    index = @sequence.count
    index.each do |i|
      hamming += 1 if sequence[i] == strand[i]
    end
    hamming
  end
end
