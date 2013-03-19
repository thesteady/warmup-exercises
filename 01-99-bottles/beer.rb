class Beer

  def self.song
    number = 99
    while number > 1
     puts "#{number} bottles of beer on the wall, #{number} bottles of beer.
      \nTake one down and pass it around, #{number -1} bottles of beer on the wall."
      number -= 1
      end
  end
end
