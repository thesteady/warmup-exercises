
class Beer
  def verse
  puts "#{@number} bottles of #{@drink} on the wall, #{@number} bottles of #{@drink}."
  puts "Take one down and pass it around, #{@number-1} bottles of #{@drink} on the wall."
  end

  def song
    printf "How many bottles will you start with?"
    @number = gets.chomp.to_i
    printf "What are you drinking?"
    @drink = gets.chomp

    while @number > 1
      puts verse
      @number -= 1
    end

    if @number > 1
      puts verse
      @number -= 1
    else
      puts "#{@number} bottles of #{@drink} on the wall, #{@number} bottles of #{@drink}."
      puts "Take one down and pass it around, no more bottles of beer on the wall."

      puts "\nNo more bottles of #{@drink} on the wall, no more bottles of #{@drink}."
      puts "Go to the store and buy some more, #{@number} bottles of #{@drink} on the wall."
    end
  end
end
beer =Beer.new
beer.song