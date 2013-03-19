class Year
  attr_reader :year
  def initialize(year)
    @year = year
  end

  def leap?
    div_100 = year / 100
    if year % 4 == 0
      if div_100.even?
        false
      else
        true
      end
    else
      false
    end
  end
end

