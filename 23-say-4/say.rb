class Say
  attr_reader
  def initialize(num)
    @num = num
  end

  def in_english
    if @num == 1_000_000
      "one million"
    elsif @num == 1000
      "one thousand"
    elsif @num == 100
      "one hundred"
    else
      get_number
    end
  end

  def get_number
    if @num >1_000_000
      "#{millions} #{thousands} #{hundreds} #{tens} #{ones}"
    elsif @num > 1000
        thousands + hundreds + tens + ones
    elsif @num > 100
        hundreds + tens + ones
    elsif @num > 20
      # tens + ones
      [tens, ones].join(" ")
    else
      lookup[@num]
    end
  end

  def millions
    mill = @num / 1_000_000
    lookup[mill] + " million "
  end

  def thousands
    thou = @num / 1000 % 1000
    if thou == 0
      " "
    else
      "#{lookup[thou]} thousand "
    end
  end

  def hundreds
    hund = @num % 1000 / 100
    lookup[hund] + " hundred "
  end

  def tens
    ten = (@num % 100) / 10
    if ten == 0
      ""
    else
      tens_lookup[ten]
    end

  end

  def ones
    uno = (@num % 100) % 10
    if uno == 0
      ""
    else
     "-" + lookup[uno]
    end
  end

  def tens_lookup
   {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => 'fifty', 6 => 'sixty',
    7 => 'seventy', 8 => 'eighty', 9 => 'ninety' }
  end

  def lookup
    {
      0 => "zero",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty"
    }
  end
end
