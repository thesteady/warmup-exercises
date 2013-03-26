class Series
  attr_reader :digits

  def initialize(series)
    @digits = series.split("").map{|i| i.to_i}
  end

  def slices(count_num)
    [[9, 8], [8, 2], [2, 7], [7, 3], [3, 4], [4, 6], [6, 3]]
  end

end
