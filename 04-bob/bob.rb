

class Bob
  
  def initialize
    loop do
      printf "Say something to Bob:"
      @input = gets.chomp
      reply(@input)
    end
  end

  def reply(input)
    if input == "Bob"
      puts "Fine. Be that way!"
    elsif input == input.upcase
      puts "Woah, chill out!"
    elsif input.include? "?"
      puts "Sure."
    else
      puts "Whatever."
    end
  end

  def l33t_sP34k(input)
    puts @sep
  end

end

Bob.new