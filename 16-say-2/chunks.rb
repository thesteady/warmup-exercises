class Chunks
  attr_reader :number

# 1234567890
# [1, 234, 567, 890]

  def initialize(number)
  @number = number.to_s
  end

  def split
    billionths = number[-10]
    millionths = number[-9..-7]
    thousandths = number[-6..-4]
    hundredths = number[-3..-1]

    puts "billionths #{billionths}"
    puts "millionths #{millionths}"
    puts "thousandths #{thousandths}"
    set = [billionths.to_i, millionths.to_i, thousandths.to_i, hundredths.to_i]
  end
end
